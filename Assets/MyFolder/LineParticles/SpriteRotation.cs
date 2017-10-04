using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpriteRotation : MonoBehaviour {

    private Vector2 m_TempPosition;
    private SpriteRenderer m_SpriteRend;

	// Use this for initialization
	void Start () {
        m_TempPosition = transform.position;
        m_SpriteRend = GetComponent<SpriteRenderer>();
	}
	
	// Update is called once per frame
	void Update () {

        float flip = transform.position.x - m_TempPosition.x;

        if(flip >= 0.05f)
        {
            m_SpriteRend.flipY  = true;
        }
        else if(flip <= -0.05f)
        {
            m_SpriteRend.flipY = false;
        }

        m_TempPosition = transform.position;
	}
}
