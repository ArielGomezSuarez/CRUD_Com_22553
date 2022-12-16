<%-- 
    Document   : verAlumno
    Created on : 12 dic. 2022, 17:20:24
    Author     : Ariel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Visualizar a ${alumnoAMostrar.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container py-3">
    <div class="row">
        <h1 class="h3">Visualizando alumno</h1>
        <p class="lead">Estás visualizando a ${alumnoAMostrar.nombreCompleto}.</p>
    </div>
    <div class="container px-4 mt-3">
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-7 col-md-6 col-lg-4" >
                <div class="card h-100">
                    <jsp:include page="partes/dataCardAlumno.jsp">
                        <jsp:param name="fotoAlumno" value="${alumnoAMostrar.foto}" />
                        <jsp:param name="nombreCompletoAlumno" value="${alumnoAMostrar.nombreCompleto}" />
                    </jsp:include>
                    <div class="card-footer">
                        <div class="row justify-content-center">                            
                            <div class="col-6">
                                <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoAMostrar.id}" class="btn bg-warning w-100"><i class="bi bi-pencil"></i></a>
                            </div>
                            <div class="col-6">
                                <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoAMostrar.id}" class="btn bg-danger text-light w-100"><i class="bi bi-trash3"></i></a>
                            </div>
                        </div>
            </div>
                </div>
            </div>
            <div class="col-sm-5 col-md-6 col-lg-4">
                <form action="${pageContext.request.contextPath}/app?accion=view&id=${alumnoAMostrar.id}"
                      method="post" class="was-validated border p-2 rounded-3 bg-light">
                    <div class="row text-left">
                        <h1>${alumnoAMostrar.nombreCompleto}</h1>
                        <h3>${alumnoAMostrar.edad} años</h3>
                        <p>Fecha de Nac.: ${alumnoAMostrar.fechaNacimiento}</p>
                        <p>EMail: ${alumnoAMostrar.mail}</p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>