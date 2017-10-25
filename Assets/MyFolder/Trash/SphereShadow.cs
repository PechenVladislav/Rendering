using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SphereShadow : MonoBehaviour {

    public Material mat;
	
	// Update is called once per frame
	void Update () {
        mat.SetVector("_SpherePosition", transform.position);
        mat.SetFloat("_SphereRadius", transform.localScale.x/2);
	}
}
