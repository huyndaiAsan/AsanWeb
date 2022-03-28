package kr.re.aac.main.controller;

import jj.play.ns.nl.captcha.Captcha;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;

@Controller
public class CaptchaController {

    @RequestMapping("/captcha/create")
    public void create(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        OutputStream out = null;
        try {
            Captcha captcha = new Captcha.Builder(200, 50).addText().build();

            response.setHeader("Cache-Control", "private,no-cache,no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
            response.setContentType("image/jpeg");

            out = response.getOutputStream();
            ImageIO.write(captcha.getImage(), "png", out);
            session.setAttribute("correctAnswer", captcha.getAnswer());
        } finally {
            if (out != null) out.close();
        }
    }
}
