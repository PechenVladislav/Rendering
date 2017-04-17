using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleReplacementEffect : MonoBehaviour {

    public Shader m_ReplacementShader;
    public Color m_OverDrawColor;

    void OnValidate()
    {
        Shader.SetGlobalColor("_OverDrawColor", m_OverDrawColor);
    }

	// Use this for initialization
	void OnEnable () {
        if (m_ReplacementShader != null)
            GetComponent<Camera>().SetReplacementShader(m_ReplacementShader, "");
	}
	
	// Update is called once per frame
	void OnDisable () {
        GetComponent<Camera>().ResetReplacementShader();

    }
}
