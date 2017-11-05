using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GB3D_Effect : MonoBehaviour {

    public Shader shader;
    public Color m_ColorA;
    public Color m_ColorB;
    public float m_Steps;

    [Range(0, 6)]
    public int downScale = 4;
    [Header("Specific Resolution")]
    public bool useSpecificResolution;
    public int width;
    public int height;

    private Material mat;

    // Use this for initialization
    void Start () {
        mat = new Material(shader);
    }

    // Update is called once per frame
    void Update () {
		
	}

    private void OnRenderImage(RenderTexture src, RenderTexture dst)
    {
        mat.SetColor("_ColorA", m_ColorA);
        mat.SetColor("_ColorB", m_ColorB);
        mat.SetFloat("_Steps", m_Steps);

        if (useSpecificResolution)
        {
            Vector3 texelSize = new Vector3(1f / width, 1f / height, 1);

            mat.SetVector("_TexelSize", texelSize);

            Graphics.Blit(src, dst, mat);
        }
        else
        {
            RenderTexture rend = RenderTexture.GetTemporary(src.width >> downScale, src.height >> downScale);
            rend.filterMode = FilterMode.Point;

            Graphics.Blit(src, rend);

            Graphics.Blit(rend, dst, mat);
            RenderTexture.ReleaseTemporary(rend);
        }

    }
}
