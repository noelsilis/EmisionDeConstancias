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
    String mat;
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
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        tmp = false;
        if (datos.size() > 0) {
            tmp = true;
            mav.setViewName("inicio");
        }
        return mav;
    }

    @RequestMapping("inicio.htm")
    public ModelAndView inicio() {
        if (datos.size() <= 0 || !tmp)  {
            tmp = false;
            return new ModelAndView("redirect:/index.htm");
        }
        return mav;
    }
    
    @RequestMapping("tramites.htm")
    public ModelAndView tramites() {
        if (datos.size() <= 0 || !tmp)  {
            tmp = false;
            return new ModelAndView("redirect:/index.htm");
        }
        return null;
    }
    @RequestMapping("nuevo.htm")
    public ModelAndView nuevo(){
        String sql="select*from alumnos";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("listar",datos);
        mav.setViewName(mat);
        return mav;
    }
}
