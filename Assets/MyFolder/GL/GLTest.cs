using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GLTest : MonoBehaviour {

    public Material m_Mat;
    public Texture m_Tex;

    private bool m_Stretch;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space)) m_Stretch = !m_Stretch;
    }

    private void OnRenderObject()
    {
        if (m_Mat == null) return;

        m_Mat.SetTexture("_MainTex", m_Tex);

        GL.PushMatrix();

        m_Mat.SetPass(0);

        GL.LoadPixelMatrix();

        GL.Viewport(new Rect(0f, 0f, Screen.width / (m_Stretch ? 2.0f: 1.0f), Screen.height));

        GL.Begin(GL.QUADS);
        GL.Color(Color.red);
        GL.Vertex3(0, 0, 0);
        GL.Vertex3(0, Screen.height, 0);
        GL.Vertex3(Screen.width, Screen.height, 0);
        GL.Color(Color.yellow);
        GL.Vertex3(Screen.width, 0, 0);
        GL.End();

        GL.PopMatrix();
    }
}
