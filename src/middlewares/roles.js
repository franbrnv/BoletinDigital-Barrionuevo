// Middleware flexible para roles permitidos
function permitirRoles(...tiposPermitidos) {
  return function (req, res, next) {
    if (tiposPermitidos.includes(req.session.usuario.tipo_usuario_id)) {
      return next();
    } else {
      res.status(404).render("404.ejs");
    }
  };
}

// Middleware para solo alumnos (tipo_usuario_id = 1) y administradores (tipo_usuario_id = 2)
function soloAlumnos(req, res, next) {
    if (
        req.session.usuario.tipo_usuario_id === 1 || 
        req.session.usuario.tipo_usuario_id === 2 
    ) {
        return next(); // Permitir el acceso a la ruta
    } else {
        res.status(404).render("404.ejs");
    }
}

// Middleware para solo alumnado (tipo_usuario_id = 3) y administradores (tipo_usuario_id = 2)
function soloAlumnado(req, res, next) {
    if (
        req.session.usuario.tipo_usuario_id === 3 || 
        req.session.usuario.tipo_usuario_id === 2
    ) {
        return next(); // Permitir el acceso a la ruta
    } else {
        res.status(404).render("404.ejs");
    }
}

// Middleware para solo administradores (tipo_usuario_id = 2)
function soloAdministradores(req, res, next) {
    if (req.session.usuario.tipo_usuario_id === 2) {
        return next(); // Permitir el acceso a la ruta
    } else {
        res.status(404).render("404.ejs");
    }
}

module.exports = { permitirRoles, soloAlumnos, soloAlumnado, soloAdministradores };