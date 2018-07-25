function d = distanciaCRC(z)
%Esta función calcula la distancia a la que se encuentra un objeto a partir
%del corrimiento al rojo cosmológico
%   z - Corrimiento al rojo cosmológico
%   d - Distancia a la que se encuentra el objeto en kilómetros
%   H0 = 70 Mpc*s^-1*km^-1 (Constante de Hubble en MegaParsec por segundo
%   por kilómetro)
%   c = 3e5 km*s^-1 (Velocidad de la luz en kilómetros por segundo)

%Definimos las constantes
H0 = 70; c = 3e5;
%Calculamos la distancia (está en Mpc)
d = (z*c)/H0;
%Convertimos a kilómetros
d = d*3.08567758128e+19;
end

