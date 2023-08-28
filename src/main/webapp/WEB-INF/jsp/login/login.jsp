
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <header>
        <title>Login Example</title>
        <link rel="stylesheet" href="css/loginstyle.css">
    </header>
    <body>
        <span class="background"></span>
        <span class="centering">
            <form method="post" action="<c:url value='paciente/cadastrarusuario'/>" class="my-form">
                <span class="login-welcome-row">
                    <img
                        class="login-welcome"
                        src="astronaut.jpg"
                    />
                    <!-- optimize the image in production -->
                    <h1>Identifique-se</h1>
                </span>
                <div class="text-field">
                    <label for="email">Usuário:</label>
                    <input
                        aria-label="User"
                        type="text"
                        name="usuario"
                        placeholder="Seu Usuário"
                        required
                    >
                    <img
                        alt="User Icon"
                        title="User Icon"
                        src="img/user.png"
                    >
                </div>
                <div class="text-field">
                    <label for="password">Senha:</label>
                    <input
                        id="password"
                        type="password"
                        aria-label="Password"
                        name="password"
                        placeholder="Sua Senha"
                        title="No mínimo 6 caracteres com 1 letra maiúscula e 1 número"
                        pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$"
                        required
                    >
                    <img
                        alt="Password Icon"
                        title="Password Icon"
                        src="img/password.svg"
                    >
                </div>
                <button type="submit" class="my-form__button">Entrar</button>
                <div class="my-form__actions">
                    <div class="my-form__row">
                        <span>Esqueceu algum dado?</span>
                        <a href="#" title="Reset Password">Solicitar Suporte</a>
                    </div>
                    <div class="my-form__signup">
                        <a href="#" title="Create Account">Bardavid Soluções</a>
                    </div>
                </div>
            </form>
        </span>
        <script src="script.js"></script>
    </body>
</html>

