package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AlteraEmpresaServlet
 */
@WebServlet("/alteraEmpresa")
public class AlteraEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Alterando empresa");
		
		String nomeEmpresa = request.getParameter("nome");
		String dataAbertura = request.getParameter("data");
		String idEmpresa = request.getParameter("id");
		Integer id = Integer.valueOf(idEmpresa);
		
		Date dataAberturaFormat = null;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy"); 
			dataAberturaFormat = sdf.parse(dataAbertura);
		} catch (ParseException e) {
			throw new ServletException(e);
		}

		Banco banco = new Banco();
		Empresa empresa = banco.editaEmpresa(id);
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(dataAberturaFormat);
				
		response.sendRedirect("listaEmpresas");
	}

}
