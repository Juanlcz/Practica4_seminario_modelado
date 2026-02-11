# Practica 4: Modelado de un Sistema Disco-Resorte
Este repositorio contiene el análisis, modelado y simulación de un sistema mecánico compuesto por un disco que rueda sin deslizar, sujeto a un resorte traslacional. Se implementan soluciones mediante **Espacios de Estados**, **Simulink** y **Simscape**.



### Simulación Numérica (MATLAB)
Se utiliza el solver `ode45` para integrar las ecuaciones.
* **Archivo:** `main.m` (configuración y gráficas).
* **Archivo:** `Disco.m` (función de estados).

### Simulación Física (Simscape)
Se implementó un modelo simplificado utilizando **parámetros equivalentes** para reducir la complejidad del diagrama:
* **Inercia Equivalente:** $1.5mr^2$
* **Resorte Rotacional:** $kr^2$

##  Resultados
La simulación muestra un movimiento armónico simple. Con los parámetros $m=10kg$ y $k=100N/m$, el sistema oscila indefinidamente (al no haber amortiguamiento) con una frecuencia natural de:
$$\omega_n = \sqrt{\frac{2k}{3m}}$$
