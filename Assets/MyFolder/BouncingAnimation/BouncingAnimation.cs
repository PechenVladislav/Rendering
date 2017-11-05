using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BouncingAnimation : MonoBehaviour {

    Vector3 lastPosition;

    void Start()
    {
        lastPosition = transform.position;
    }

    void LateUpdate()
    {
        Vector3 delta = transform.position - lastPosition;
        transform.localRotation = Quaternion.LookRotation(delta + Vector3.forward * 0.001f);
        float l = 1f + delta.magnitude;
        float wh = Mathf.Sqrt(1f / l);//V = 1; w = h; w * h * l = V;  => w = h = (1 / l)^1/2 
        transform.localScale = new Vector3(wh, wh, l);

        lastPosition = transform.position;
    }
}
