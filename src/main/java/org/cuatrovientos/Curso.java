package org.cuatrovientos;

public class Curso {
    private int id;
    private String nombre;
    private int participantes;
    private int plazas;
    private String categoria;

    public Curso() {}

    public Curso(int id, String nombre, int participantes, int plazas, String categoria) {
        this.id = id;
        this.nombre = nombre;
        this.participantes = participantes;
        this.plazas = plazas;
        this.categoria = categoria;
    }

    public int getId() { 
        return id; 
    }
    public String getNombre() { 
        return nombre; 
    }
    public int getParticipantes() { 
        return participantes; 
    }
    public int getPlazas() { 
        return plazas; 
    }
    public String getCategoria() { 
        return categoria; 
    }

    public int getPlazasDisponibles() {
        return plazas - participantes;
    }
}
