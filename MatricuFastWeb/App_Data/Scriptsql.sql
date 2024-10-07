-- Tabla Usuarios
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY IDENTITY,
    NombreUs NVARCHAR(100),
    ApellidoUs NVARCHAR(100),
    Email NVARCHAR(100),
    Contraseña NVARCHAR(100),
    -- Campos de auditoría
    AdicionadoPor NVARCHAR(100),
    FechaAdicion DATETIME,
    ModificadoPor NVARCHAR(100),
    FechaModificacion DATETIME
);

-- Tabla Estudiantes
CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY IDENTITY,
    NombreEs NVARCHAR(100),
    ApellidoEs NVARCHAR(100),
    Carrera NVARCHAR(100),
    AnioIngreso INT,
  -- Campos de auditoría
    AdicionadoPor NVARCHAR(100),
    FechaAdicion DATETIME,
    ModificadoPor NVARCHAR(100),
    FechaModificacion DATETIME
);

-- Tabla Cursos
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY IDENTITY,
    NombreCurso NVARCHAR(100),
    Creditos INT,
    Horas INT,
  -- Campos de auditoría
    AdicionadoPor NVARCHAR(100),
    FechaAdicion DATETIME,
    ModificadoPor NVARCHAR(100),
    FechaModificacion DATETIME
);

-- Tabla Matrícula
CREATE TABLE Matricula (
    MatriculaID INT PRIMARY KEY IDENTITY,
    EstudianteID INT FOREIGN KEY REFERENCES Estudiantes(EstudianteID),
    CursoID INT FOREIGN KEY REFERENCES Cursos(CursoID),
    FechaMatricula DATETIME,
  -- Campos de auditoría
    AdicionadoPor NVARCHAR(100),
    FechaAdicion DATETIME,
    ModificadoPor NVARCHAR(100),
    FechaModificacion DATETIME
);