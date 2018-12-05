class Node < Base 
  TYPE =
    [ document:        "DOCUMENT",
      canvas:          "CANVAS",
      frame:           "FRAME",
      group:           "GROUP",
      vector:          "VECTOR",
      boolean:         "BOOLEAN",
      star:            "STAR",
      line:            "LINE",
      ellipse:         "ELLIPSE",
      regular_polygon: "REGULAR_POLYGON",
      rectangle:       "RECTANGLE",
      text:            "TEXT",
      slice:           "SLICE",
      component:       "COMPONENT",
      instance:        "INSTANCE"
    ]

  attr_accessor :id, :name, :visible, :type  
end
