using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineParticles : MonoBehaviour {

    [SerializeField] private ParticleSystem m_CurrentPS;
    [SerializeField] private LineRenderer m_LineObj;

    private ParticleSystem.Particle[] m_Particles = new ParticleSystem.Particle[100];
    private Vector3 m_TempPosition;
    private float m_InitialRadius;
    private ParticleSystem.ShapeModule m_Shape;
    private ParticleSystem.MainModule m_Main;
    private ParticleSystem.EmissionModule m_Emission;

    LineRenderer lr;
    private List<LineRenderer> m_LRs = new List<LineRenderer>();

    void Start () {
        m_Shape = m_CurrentPS.shape;
        m_Main = m_CurrentPS.main;
        m_Emission = m_CurrentPS.emission;

        m_InitialRadius = m_Shape.radius;
        m_TempPosition = transform.position;

    }

    void LateUpdate () {
        float speed = Vector3.Distance(transform.position, m_TempPosition);

        m_Emission.rateOverDistanceMultiplier = Mathf.Clamp(1f + speed * 2f, 1f, 5f);
        m_Main.startSpeedMultiplier = Mathf.Clamp(1f + speed * 3f, 1f, 3f);
        //m_Shape.radius = Mathf.Clamp(m_InitialRadius - speed * 1f, 0.01f, m_InitialRadius);

        m_TempPosition = transform.position;

        for (int i = 0; i < m_LRs.Count; i++)
        {
            Destroy(m_LRs[i].gameObject);
        }
        m_LRs.Clear();

        int length = m_CurrentPS.GetParticles(m_Particles);

        for (int i = 1; i < length; i++)
        {
            for (int j = 0; j < length; j++)
            {
                float lifeTime = m_Particles[j].startLifetime - m_Particles[j].remainingLifetime;

                float mag = (m_Particles[i].position - m_Particles[j].position).sqrMagnitude;
                if (mag > 0.1f && mag < 1.5f && lifeTime < m_Particles[j].startLifetime / 2f)
                {
                    lr = Instantiate(m_LineObj, this.transform);

                    lr.positionCount = 2;
                    lr.SetPosition(0, m_Particles[i].position);
                    lr.SetPosition(1, m_Particles[j].position);

                    m_LRs.Add(lr);
                }
            }
        }

        m_CurrentPS.SetParticles(m_Particles, length);
	}
}
