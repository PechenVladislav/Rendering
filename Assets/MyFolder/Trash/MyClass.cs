using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class MyClass : MonoBehaviour
{
    public GameObject bone0;
    public GameObject bone1;
    public GameObject bone2;

    void Start()
    {
        print(bone0.GetComponent<Renderer>().localToWorldMatrix.GetRow(0));
        print(bone0.GetComponent<Renderer>().localToWorldMatrix.GetRow(1));
        print(bone0.GetComponent<Renderer>().localToWorldMatrix.GetRow(2));
        print(bone0.GetComponent<Renderer>().localToWorldMatrix.GetRow(3));
    }

    void Update()
    {
        if (null != bone0)
        {
            GetComponent<Renderer>().sharedMaterial.SetMatrix("_Trafo0",
               bone0.GetComponent<Renderer>().localToWorldMatrix);
        }
        if (null != bone1)
        {
            GetComponent<Renderer>().sharedMaterial.SetMatrix("_Trafo1",
               bone1.GetComponent<Renderer>().localToWorldMatrix);
        }
        if (null != bone2)
        {
            GetComponent<Renderer>().sharedMaterial.SetMatrix("_Trafo2",
               bone2.GetComponent<Renderer>().localToWorldMatrix);
        }
        if (null != bone0 && null != bone1)
        {
            transform.position = 0.5f * (bone0.transform.position + bone1.transform.position);

            transform.rotation = bone0.transform.rotation;
        }
    }
}