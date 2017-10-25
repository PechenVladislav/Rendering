using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DollyZoom : MonoBehaviour {

    public Camera m_Camera;
    public Transform m_Target;

    public float horOblique;
    public float vertOblique;

    private float initHeight;

    private float FrustrumHeightAtDistance(float distance)
    {
        return 2.0f * distance * Mathf.Tan(m_Camera.fieldOfView * 0.5f * Mathf.Deg2Rad);
    }

    private float FOVForHeightAndDistance(float height, float distance)
    {
        return Mathf.Atan(height / (2.0f * distance)) * 2.0f * Mathf.Rad2Deg;
    }

    void Start () {
        float distance = Vector3.Distance(transform.position, m_Target.position);
        initHeight = FrustrumHeightAtDistance(distance);
	}
	
	// Update is called once per frame
	void Update () {
        //Matrix4x4 matrix = m_Camera.projectionMatrix;
        //matrix[0, 2] = horOblique;
        //matrix[1, 2] = vertOblique;
        //m_Camera.projectionMatrix = matrix;

        float curDist = Vector3.Distance(transform.position, m_Target.position);
        m_Camera.fieldOfView = FOVForHeightAndDistance(initHeight, curDist);

        float hor = Input.GetAxis("Horizontal");
        float vert = Input.GetAxis("Vertical");

        transform.position += new Vector3(hor, 0f, vert) * Time.deltaTime * 5f;
	}
}
