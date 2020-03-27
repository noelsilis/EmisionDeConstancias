/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ctrl;

import Config.Conexion;
import Entidad.Usuario;
import java.util.List;
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
    boolean tmp = false;
    int id;
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
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        if (datos.size() > 0) {
            tmp = true;
            return new ModelAndView("redirect:/inicio.htm");
        }
        tmp = false;
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping("inicio.htm")
    public ModelAndView x() {
        if (!tmp) {
            return new ModelAndView("redirect:/index.htm");
        }
        return null;
    }
}
