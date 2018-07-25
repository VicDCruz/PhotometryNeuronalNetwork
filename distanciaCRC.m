function d = distanciaCRC(z)
%Esta funci�n calcula la distancia a la que se encuentra un objeto a partir
%del corrimiento al rojo cosmol�gico
%   z - Corrimiento al rojo cosmol�gico
%   d - Distancia a la que se encuentra el objeto en kil�metros
%   H0 = 70 Mpc*s^-1*km^-1 (Constante de Hubble en MegaParsec por segundo
%   por kil�metro)
%   c = 3e5 km*s^-1 (Velocidad de la luz en kil�metros por segundo)

%Definimos las constantes
H0 = 70; c = 3e5;
%Calculamos la distancia (est� en Mpc)
d = (z*c)/H0;
%Convertimos a kil�metros
d = d*3.08567758128e+19;
end

