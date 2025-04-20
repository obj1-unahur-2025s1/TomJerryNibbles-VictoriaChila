object tom {

    var energia = 50

    method velocidadMaxima() = 5 + (energia /10)
    method correr(distancia) {
        energia = energia - (distancia /2)
        // energia -= distancia /2
    }
    method comer(raton) {
        energia = energia + (12 + raton.peso())
        // energia += 12 + raton.peso()        
    }

    method puedeCazar(distancia) {
       // energia_disponible >= energia_necesaria (algo así seria el enunciado de abajo)
        return energia >= distancia / 2
    }

    method cazar(raton, distancia){
        if (self.puedeCazar(distancia)){
            self.correr(distancia)
            self.comer(raton)
        }
    }

}

object jerry {

    var edad = 2
    
    method peso() = edad * 20

    method cumplirAño(){
        edad += 1
    }
  
}

object nibbles {
    method peso() = 35
  
}

object perez{
    var cantidadDeDientesRecolectados = 0
    var fondosDisponibles = 10000
    method peso() = 15 + cantidadDeDientesRecolectados * 0.5

    method canjearDiente() {
        cantidadDeDientesRecolectados += 1
        fondosDisponibles -= 1000
    }
}

