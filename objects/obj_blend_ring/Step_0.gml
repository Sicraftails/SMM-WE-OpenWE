/// @description Desaparece cuando la escala termina en 0.5

scale += 0.03245;
if (scale > 0.5) {

    alpha -= 0.09;
    if ((alpha < 0.09) && (alpha2 < 0.025))
        instance_destroy();
}
alpha2 -= 0.025;