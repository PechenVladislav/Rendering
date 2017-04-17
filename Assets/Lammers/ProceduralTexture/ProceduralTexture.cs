using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProceduralTexture : MonoBehaviour
{

    public enum Functions { Linear, Sin, Dir, Angle };

    #region Public Variables

    public Functions m_Function;
    public int m_WidthHeight = 512;
    public Texture2D m_GeneratedTexture;

    #endregion

    #region Private Variables

    private Material m_CurrentMaterial;
    private Vector2 m_CenterPosition;
    private delegate Color Function(Vector2 currentPos, Vector2 centerPos);
    private Function m_Func;

    #endregion

    // Use this for initialization
    void Start()
    {
        if (!m_CurrentMaterial)
        {
            m_CurrentMaterial = GetComponent<Renderer>().sharedMaterial;
            if (!m_CurrentMaterial)
            {
                Debug.LogWarningFormat("Cannot find material on {0}", transform.name);
            }
        }

        if (m_CurrentMaterial)
        {
            m_CenterPosition = new Vector2(0.5f, 0.5f);


            switch (m_Function)
            {
                case Functions.Linear:
                    m_Func = DefaultFunc;
                    break;
                case Functions.Sin:
                    m_Func = SinFunc;
                    break;
                case Functions.Dir:
                    m_Func = DirFunc;
                    break;
                case Functions.Angle:
                    m_Func = AngleFunc;
                    break;
                default:
                    m_Func = DefaultFunc;
                    break;
            }
            m_GeneratedTexture = GenerateTexureLinear();
            m_CurrentMaterial.SetTexture("_MainTex", m_GeneratedTexture);
        }
    }

    private Texture2D GenerateTexureLinear()
    {
        Texture2D proceduralTexture = new Texture2D(m_WidthHeight, m_WidthHeight);
        Vector2 centerPixelPosition = m_CenterPosition * m_WidthHeight;

        for (int x = 0; x < m_WidthHeight; x++)
        {
            for (int y = 0; y < m_WidthHeight; y++)
            {
                Vector2 currentPosition = new Vector2(x, y);

                Color pixelColor = m_Func(currentPosition, centerPixelPosition);
                proceduralTexture.SetPixel(x, y, pixelColor);
            }
        }
        proceduralTexture.Apply();

        return proceduralTexture;
    }

    private Color DefaultFunc(Vector2 currentPos, Vector2 centerPos)
    {
        float pixelDistance = Vector2.Distance(currentPos, centerPos) / (m_WidthHeight * 0.5f);
        pixelDistance = Mathf.Abs(1 - Mathf.Clamp01(pixelDistance));

        return new Color(pixelDistance, pixelDistance, pixelDistance, 1.0f);
    }

    private Color SinFunc(Vector2 currentPos, Vector2 centerPos)
    {
        float pixelDistance = Vector2.Distance(currentPos, centerPos) / (m_WidthHeight * 0.5f);
        pixelDistance = Mathf.Abs(1 - Mathf.Clamp01(pixelDistance));
        pixelDistance = Mathf.Sin(pixelDistance * Mathf.PI * 10f) * pixelDistance;

        return new Color(pixelDistance, pixelDistance, pixelDistance, 1.0f);
    }

    private Color DirFunc(Vector2 currentPos, Vector2 centerPos)
    {
        Vector2 direction = (centerPos - currentPos).normalized;
        float right = Vector2.Dot(direction, Vector2.right);
        float left = Vector2.Dot(direction, -Vector2.right);
        float up = Vector2.Dot(direction, Vector2.up);

        return new Color(right, left, up, 1.0f);
    }

    private Color AngleFunc(Vector2 currentPos, Vector2 centerPos)
    {
        Vector2 direction = (centerPos - currentPos).normalized;
        float right = Vector2.Angle(direction, Vector2.right) / 180f;
        float left = Vector2.Angle(direction, -Vector2.right) / 180f;
        float up = Vector2.Angle(direction, Vector2.up) / 180f;

        return new Color(right, left, up, 1.0f);
    }
}
