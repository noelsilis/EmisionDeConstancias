/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ctrl;

import Config.Conexion;
import Entidad.Usuario;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author EquipoRUTS_ITSOEH
 */
@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    boolean tmp = false, tmp2 = true;
    String mat;
    String no;
    List datos;

    @RequestMapping(value = "index.htm", method = RequestMethod.GET)
    public ModelAndView login() {
        tmp = false;
        mav.addObject(new Usuario());
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "index.htm", method = RequestMethod.POST)
    public ModelAndView login(Usuario u) {
        String sql = "select * from alumnos where NoControl='" + u.getMatricula()
                + "' and Contraseña='" + u.getPass() + "'";
        mat = u.getMatricula();
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        tmp = false;
        if (datos.size() > 0) {
            tmp = true;
            if ("Master".equals(u.getMatricula())) {
                mav.setViewName("administrador");//cambiar a la de admin ****************
            } else {
                sql = "select*from tramites where NoControl=" + mat + " and tipoTramite like '%ervicio%'";
                datos = this.jdbcTemplate.queryForList(sql);
                int tamAr = datos.size() - 1;
                mav.addObject("listar", datos);
                mav.addObject("tamAr", tamAr);
                sql = "select*from tramites where NoControl=" + mat + " and tipoTramite like '%esidencia%'";
                datos = this.jdbcTemplate.queryForList(sql);
                tamAr = datos.size() - 1;
                mav.addObject("listar2", datos);
                mav.addObject("tamAr2", tamAr);
                mav.setViewName("inicio");
            }
        }
        return mav;
    }

    @RequestMapping("inicio.htm")
    public ModelAndView inicio() {
        if (datos.size() <= 0 || !tmp) {
            tmp = false;
            return new ModelAndView("redirect:/index.htm");
        }
        return mav;
    }

    @RequestMapping("menu_t_servicio.htm")
    public ModelAndView menu_t_servicio() {
        mav.setViewName("menu_t_servicio");
        return mav;
    }

    @RequestMapping("menu_t_residencia.htm")
    public ModelAndView menu_t_residencia() {
        mav.setViewName("menu_t_residencia");
        return mav;
    }

    @RequestMapping("datosAlumno.htm")
    public ModelAndView datosAlumno() {
        if (tmp2) {
            String sql = "select * from alumnos where NoControl<>'" + mat + "'";
            List datos = this.jdbcTemplate.queryForList(sql);
            int tamAr = datos.size() - 1;
            mav.addObject("listar", datos);
            mav.addObject("tamAr", tamAr);
            tmp2 = false;
        }
        mav.setViewName("datosAlumno");
        return mav;
    }

    @RequestMapping(value = "editarAlumno.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request) {
        no = request.getParameter("id");
        String sql = "select * from alumnos where NoControl='" + no + "'";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("tmp", datos);
        mav.setViewName("editarAlumno");
        return mav;
    }

    @RequestMapping(value = "editarAlumno.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Usuario u) {
        String sql = "update alumnos set NoControl=?, Nombres=?, APaterno=?, "
                + "AMaterno=?, Especialidad=?, Email=? where NoControl=?";
        this.jdbcTemplate.update(sql, u.getMatricula(), u.getNombre(), u.getAPaterno(),
                u.getAMaterno(), u.getEspecialidad(), u.getEmail(), no);
        tmp2 = true;
        return new ModelAndView("redirect:/datosAlumno.htm");
    }

    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request) {
        no = request.getParameter("id");
        String sql = "delete from alumnos where NoControl=" + no;
        this.jdbcTemplate.update(sql);
        tmp2 = true;
        return new ModelAndView("redirect:/datosAlumno.htm");
    }
    @RequestMapping("adminServicio.htm")
    public ModelAndView adminServicio() {
        String sql = "select * from alumnos where NoControl<>'" + mat + "'";
        List datos = this.jdbcTemplate.queryForList(sql);
        int tamAr = datos.size() - 1;
        mav.addObject("listar", datos);
        mav.addObject("tamAr", tamAr);
        mav.setViewName("adminServicio");
        return mav;
    }
}
    
@RequestMapping("especialidadesTramitesSS.htm")
    public ModelAndView especialidadesTramitesSS() {
        mav.setViewName("especialidadesTramitesSS");
        return mav;
    }
    @RequestMapping("especialidadesTramitesRP.htm")
    public ModelAndView especialidadesTramitesRP() {
        mav.setViewName("especialidadesTramitesRP");
        return mav;
    }
    @RequestMapping("configuracion.htm")
    public ModelAndView configuracion() {
        mav.setViewName("configuracion");
        return mav;
    }

    
//"select * from alumnos where NoControl='" + u.getMatricula() + "' and Contraseña='" + u.getPass() + "'";
//"select*from tramites where NoControl=" + mat + " and tipoTramite like '%ervicio%'";
//"select*from tramites where NoControl=" + mat + " and tipoTramite like '%esidencia%'";
