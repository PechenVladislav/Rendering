using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Matrix : MonoBehaviour {

    Renderer rend;

    // Use this for initialization
    void Start () {
        rend = GetComponent<Renderer>();
        Matrix4x4 matrix;
        
        print("L2W");
        print(rend.localToWorldMatrix.GetRow(0));
        print(rend.localToWorldMatrix.GetRow(1));
        print(rend.localToWorldMatrix.GetRow(2));
        print(rend.localToWorldMatrix.GetRow(3));
        print("W2L");
        print(rend.worldToLocalMatrix.GetRow(0));
        print(rend.worldToLocalMatrix.GetRow(1));
        print(rend.worldToLocalMatrix.GetRow(2));
        print(rend.worldToLocalMatrix.GetRow(3));
        print("Matrix");
        matrix = Matrix4x4.Inverse(rend.localToWorldMatrix);
        print(matrix.GetRow(0));
        print(matrix.GetRow(1));
        print(matrix.GetRow(2));
        print(matrix.GetRow(3));

        //transform.RotateAround(new Vector3(0.5f, 0.5f, 0), Vector3.back, 45);
        StartCoroutine(rotateAround());
    }
	
	// Update is called once per frame
	void Update () {


        //transform.RotateAround(new Vector3(0.5f, 0.5f, 0), Vector3.back, 45*Time.deltaTime);


    }

    private IEnumerator rotateAround()
    {
        yield return new WaitForSeconds(2f);

        while(true)
        {
            Matrix4x4 myMatrix = new Matrix4x4();
            myMatrix.SetRow(0, new Vector4(1f, 0f, 0f, -2f));  //around (0.5f, 0.5f, 0f)
            myMatrix.SetRow(1, new Vector4(0f, 1f, 0f, 1f));
            myMatrix.SetRow(2, new Vector4(0f, 0f, 1f, 0f));
            myMatrix.SetRow(3, new Vector4(0f, 0f, 0f, 1f));

            transform.position = (Matrix4x4.Inverse(myMatrix).MultiplyPoint(transform.position));
            //yield return new WaitForSeconds(2f);


            myMatrix.SetRow(0, new Vector4(Mathf.Cos(Mathf.Deg2Rad * -45 * Time.deltaTime), -Mathf.Sin(Mathf.Deg2Rad * -45 * Time.deltaTime), 0f, 0));  //rotate 45deg
            myMatrix.SetRow(1, new Vector4(Mathf.Sin(Mathf.Deg2Rad * -45 * Time.deltaTime), Mathf.Cos(Mathf.Deg2Rad * -45 * Time.deltaTime), 0f, 0));
            myMatrix.SetRow(2, new Vector4(0f, 0f, 1f, 0f));
            myMatrix.SetRow(3, new Vector4(0f, 0f, 0f, 1f));

            transform.position = (myMatrix.MultiplyPoint(transform.position));
            //yield return new WaitForSeconds(2f);


            myMatrix.SetRow(0, new Vector4(1f, 0f, 0f, -2f));
            myMatrix.SetRow(1, new Vector4(0f, 1f, 0f, 1f));
            myMatrix.SetRow(2, new Vector4(0f, 0f, 1f, 0f));
            myMatrix.SetRow(3, new Vector4(0f, 0f, 0f, 1f));

            transform.position = (myMatrix.MultiplyPoint(transform.position));
            yield return null;
        }

    }
}
