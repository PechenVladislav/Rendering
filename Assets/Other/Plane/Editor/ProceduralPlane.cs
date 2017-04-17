using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;


public class ProceduralPlane : ScriptableWizard
{

    #region Public Fields

    public int m_XSize = 10;
    public int m_YSize = 10;
    public float m_ScaleDivider = 1;
    public bool m_CalculateNormals;
    public bool m_CalculateUV;
    public bool m_CalculateTangents;

    #endregion

    [MenuItem("GameObject/3D Object/Procedural Grid")]
    static void CreateWizard()
    {
        ScriptableWizard.DisplayWizard<ProceduralPlane>("Procedural Grid", "Create");
    }

    void OnWizardCreate()
    {
        if (m_XSize * m_YSize > 65000)
        {
            Debug.LogFormat("Cannot create Procedural Grid, vertexCount > 65000!");
            return;
        }
        Mesh mesh = GenerateMesh();
        AssetDatabase.CreateAsset(mesh, "Assets/Grid.asset");
    }

    private Mesh GenerateMesh()
    {
        Mesh mesh = new Mesh();
        mesh.name = "Procedural Grid";
        m_ScaleDivider = Mathf.Clamp(m_ScaleDivider, 0.1f, Mathf.Infinity);

        Vector3[] vertices = new Vector3[(m_XSize + 1) * (m_YSize + 1)];

        for (int i = 0, y = 0; y <= m_YSize; y++)
        {
            for (int x = 0; x <= m_XSize; x++, i++)
            {
                vertices[i] = new Vector3(x, 0f, y) / m_ScaleDivider;
            }
        }
        mesh.vertices = vertices;

        if (m_CalculateUV)
        {
            Vector2[] uv = new Vector2[vertices.Length];
            for (int i = 0, y = 0; y <= m_YSize; y++)
            {
                for (int x = 0; x <= m_XSize; x++, i++)
                {
                    uv[i] = new Vector2((float)x / m_XSize, (float)y / m_YSize);
                }
            }
            mesh.uv = uv;
        }

        if(m_CalculateTangents)
        {
            Vector4[] tangents = new Vector4[vertices.Length];
            Vector4 tangent = new Vector4(1f, 0f, 0f, -1f);
            for (int i = 0, y = 0; y <= m_YSize; y++)
            {
                for (int x = 0; x <= m_XSize; x++, i++)
                {
                    tangents[i] = tangent;
                }
            }
            mesh.tangents = tangents;
        }

        int[] triangles = new int[m_XSize * m_YSize * 6];
        for (int ti = 0, vi = 0, y = 0; y < m_YSize; y++, vi++)
        {
            for (int x = 0; x < m_XSize; x++, ti += 6, vi++)
            {
                triangles[ti] = vi;
                triangles[ti + 3] = triangles[ti + 2] = vi + 1;
                triangles[ti + 4] = triangles[ti + 1] = vi + m_XSize + 1;
                triangles[ti + 5] = vi + m_XSize + 2;
            }
        }
        mesh.triangles = triangles;
        if (m_CalculateNormals)
            mesh.RecalculateNormals();

        return mesh;
    }

    private void CalcuclateUV()
    {

    }
}
