using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BouncingAnimation2D : MonoBehaviour {

    private Vector2 m_TempPosition;

	// Use this for initialization
	void Start () {
        m_TempPosition = transform.position;
	}
	
	// Update is called once per frame
	void Update () {
        Vector2 delta = (Vector2)transform.position - m_TempPosition;

        transform.right = delta.normalized;

        float w = 1f + delta.magnitude;
        float h = 1f / w;

        transform.localScale = new Vector3(w, h, 1f);

        m_TempPosition = transform.position;
	}
}
