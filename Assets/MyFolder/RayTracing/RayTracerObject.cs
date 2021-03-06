﻿using UnityEngine;
using System.Collections;

public class RayTracerObject : MonoBehaviour
{

    public float lambertCoeff = 1f;

    public float reflectiveCoeff = 0f;

    public float phongCoeff = 1f;
    public float phongPower = 2f;

    public float blinnPhongCoeff = 1f;
    public float blinnPhongPower = 2f;

    public float transparentCoeff = 0f;


    public Color baseColor = Color.gray;

    void Awake()
    {
        Renderer rend = GetComponent<Renderer>();
        if (!rend.material.mainTexture)
        {
            rend.material.color = baseColor;
        }
    }
}