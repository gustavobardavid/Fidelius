package br.com.caelum.vraptor.tests;

import br.com.caelum.vraptor.model.Medicamento;
import br.com.caelum.vraptor.model.Paciente;

public class PacienteTests {
	
	public static void main(String[] args) {
		Paciente paciente = new Paciente();
		for (Medicamento medicamento : paciente.getMedicamentos()) {
			System.out.println(medicamento.getNome());
		}
	}
}
