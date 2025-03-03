library(DiagrammeR)

grViz("
digraph esquema {
  graph [layout = dot, rankdir = TB, fontname='Open Sans']

  // Nodos principales con fuente y colores personalizados
  ODS [label='Objetivos de Desarrollo Sostenible', shape=box, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
  PND [label='Plan Nacional de Desarrollo', shape=box, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
  PDI [label='Plan de Desarrollo de Itapúa 2030', shape=box, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
  POI [label='Plan Operativo Institucional', shape=box, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']

  // Conexiones principales
  ODS -> PND
  PND -> PDI
  PDI -> POI

  // Subgrafo para alinear los ejes estratégicos a la misma altura
  subgraph cluster_ejes {
    label = 'Ejes Estratégicos';
    style = dashed;
    color = gray;
    fontcolor = black;
    fontname='Open Sans';
    
    Eje1 [label='Acceso a Servicios y Derechos Básicos', shape=ellipse, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
    Eje2 [label='Salud', shape=ellipse, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
    Eje3 [label='Educación', shape=ellipse, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
    Eje4 [label='Crecimiento Económico', shape=ellipse, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
    Eje5 [label='Ambiente', shape=ellipse, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']

    rank = same; // Mantiene los ejes alineados en la misma fila
  }

  // Conexión del Plan de Itapúa con los Ejes Estratégicos
  PDI -> Eje1
  PDI -> Eje2
  PDI -> Eje3
  PDI -> Eje4
  PDI -> Eje5

  // Conexiones entre ejes estratégicos para reflejar interrelación
  Eje1 -> Eje2 [constraint=false]
  Eje2 -> Eje3 [constraint=false]
  Eje3 -> Eje4 [constraint=false]
  Eje4 -> Eje5 [constraint=false]
  Eje5 -> Eje1 [constraint=false]

  // Objetivos estratégicos alineados a cada eje
  Obj1 [label='Objetivo Estratégico 1', shape=oval, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
  Obj2 [label='Objetivo Estratégico 2', shape=oval, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
  Obj3 [label='Objetivo Estratégico 3', shape=oval, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']

  Eje1 -> Obj1
  Eje2 -> Obj2
  Eje3 -> Obj3
  Eje4 -> Obj1
  Eje5 -> Obj2

  // Acciones estratégicas derivadas de los objetivos estratégicos
  Accion1 [label='Acción Estratégica A', shape=rectangle, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
  Accion2 [label='Acción Estratégica B', shape=rectangle, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']
  Accion3 [label='Acción Estratégica C', shape=rectangle, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']

  Obj1 -> Accion1
  Obj2 -> Accion2
  Obj3 -> Accion3
  
  
  // Nuevo nodo: Informe de Gestión
  Informe [label='Informe de Gestión', shape=box, style=filled, fillcolor='#1E3552', fontcolor=white, fontname='Open Sans']

  // Conectar Acciones Estratégicas con el Informe de Gestión
  Accion1 -> Informe
  Accion2 -> Informe
  Accion3 -> Informe
}
")

