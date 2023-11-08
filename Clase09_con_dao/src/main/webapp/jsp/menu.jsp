<nav class="navbar navbar-expand-lg bg-body-tertiary">
	<div class="container-fluid">
		<a class="navbar-brand text-primary" href="/index.jsp">Inicio</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active text-primary"
					aria-current="page" href="/cursos.jsp">Cursos</a></li>
				<li class="nav-item"><a class="nav-link active text-primary"
					aria-current="page" href="/alumnos.jsp">Alumnos</a></li>
			</ul>
			<div id="clockdate">
				<div class="clockdate-wrapper">
			    	<div id="clock"></div>
			  	</div>
			</div>
			<form class="d-flex" role="search">
				<input class="form-control me-2" type="search" placeholder="Search" name="buscar"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>
	</div>
</nav>