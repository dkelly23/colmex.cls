# colmex.cls
Documento cls de LaTex para simplificar la creación de notas basadas en el formato de reporte, nativo de LaTex. El .cls añade además un conjunto de comandos para aumentar la velocidad a la que se pueden tomar apuntes en matemáticas. 

## Documentación

**Autor:** Daniel Kelly  
**Correo:** djsanchez@colmex.mx  
**Fecha:** Septiembre 2024  
**Instituto:** El Colegio de México

---

La clase *colmex.cls* está pensada para recopilar de forma sencilla conjuntos de notas. Nos basamos en la clase *report* nativa de LaTeX.

## Configuración Inicial

Para utilizar *colmex.cls*, es necesario configurar el documento de modo que esta sea la clase que se utilice (el documento cls debe estar en la misma carpeta que el archivo). Hacemos esto estableciendo en el preámbulo del documento:

```latex
\documentclass[esp]{colmex}
```

La clase está configurada de tal modo que pueda utilizarse en inglés o español; esta opción debe configurarse al establecer la clase del documento ([esp] o [eng]). De forma nativa, utilizamos Computer Modern en 12pts. Esto se puede cambiar en la línea 39 del código.

Los ajustes del tamaño del cuerpo del texto también pueden ser modificados por el usuario. Los valores predeterminados son los siguientes:

```latex
\textheight=22cm
\textwidth=17.5cm
\topmargin=-1cm
\oddsidemargin=-0.5cm
\setlength\parindent{0pt}
```

La última línea controla la indentación del texto al iniciar un nuevo párrafo. Igual que en un documento regular, el autor debe definir título, fecha, autor y (opcionalmente) subtítulo, que se imprimen automáticamente en la primera página con el comando \maketitle.

En concordancia con el uso del formato reporte, la división del documento se realiza en capítulos, secciones, subsecciones, subsubsecciones y párrafos.

## Comandos

Para simplificar la escritura de matemáticas, definimos una serie de comandos que pretenden dar formato al texto de una forma mucho más veloz. El usuario puede modificar esta lista de comandos personalizados.

### Formato de Texto

- **Texto Azul**

    ```latex
    \blue{text}
    ```
    El comando anterior imprime text en azul.

- **Texto Naranja**

    ```latex
    \orange{text}
    ```
    El comando anterior imprime text en naranja.

- **Texto Verde**

    ```latex
    \green{text}
    ```
    El comando anterior imprime text en verde.

### Matemáticas

Todos los siguientes comandos deben usarse dentro de entornos de matemáticas dados por `$$`.

- **Operador de Derivada Parcial**

    ```latex
    \pd{f(x,y)}{x}
    ```
    El comando anterior imprime:
    $$
    \dfrac{\partial f(x,y)}{\partial x}
    $$
    Utiliza la opción `displaystyle`, por lo que al incluirlo en el texto no se ajusta a la altura de la línea.

- **Operador de Suma**

    ```latex
    \dsum{i=1}{N}
    ```
    El comando anterior imprime:
    $\displaystyle\sum_{i=1}^{N}$
    Su uso es análogo al de `dfrac` en el caso de la fracción. En contraste, el comando `sum` imprime $\sum_{i=1}^{N}$.

- **Operador de Producto**

    ```latex
    \dprod{i=1}{N}
    ```
    El comando anterior imprime:
    $\displaystyle\prod_{i=1}^{N}$
    Su uso es análogo al de `dfrac` en el caso de la fracción. En contraste, el comando `prod` imprime $\prod_{i=1}^{N}$.

- **Probability Limit**

    ```latex
    \plim{x}
    ```
    El comando anterior imprime:
    $\text{plim}\lbrace {x} \rbrace$

- **Operador de Esperanza**

    ```latex
    \E{x}
    ```
    El comando anterior imprime:
    $\text{E}\lbrace {x} \rbrace$
    Dentro del operador se puede incluir también el operador condicional incluyendo `|` dentro del operador.

- **Operador de Varianza**

    ```latex
    \Var{x}
    ```
    El comando anterior imprime:
    $\text{Var}\lbrace {x} \rbrace$
    Dentro del operador se puede incluir también el operador condicional incluyendo `|` dentro del operador.

- **Comando Underset**

    ```latex
    \un{x}{text}
    ```
    El comando anterior imprime:
    $\underset{x}{text}$
    Simplifica el uso del comando `underset` para abreviarlo.

- **Negritas en Matemáticas**

    ```latex
    \mn{A}
    ```
    El comando anterior imprime:
    $\mathbf{A}$
    Simplifica el uso del comando `mathbf` para imprimir operadores matemáticos en negritas.

- **Números Reales**

    ```latex
    \R
    ```
    El comando imprime:
    $\mathbb{R}$

### Alfabeto Griego

- **Delta:** $\Delta$ & $\delta$

    ```latex
    \D
    \d
    ```

- **Alfa:** $A$ & $\alpha$

    ```latex
    A
    \a
    ```

- **Beta:** $B$ & $\beta$

    ```latex
    B
    \b
    ```

- **Gamma:** $\Gamma$ & $\gamma$

    ```latex
    \G
    \g
    ```

- **Theta:** $\Theta$ & $\theta$

    ```latex
    \T
    \t
    ```

- **Lambda:** $\mathcal{L}$ & $\lambda$

    ```latex
    \L
    \l
    ```

### Matrices y Vectores

Las letras $x, y, z$ y $w$ pueden utilizarse en forma de comando para ponerlos en negritas, de modo que representen matrices o vectores (tanto en mayúsculas como en minúsculas). El código:

```latex
\x \cdot \X
```

Imprime:
$\mathbf{x}\cdot\mathbf{X}$

Se puede conseguir lo mismo con el resto del alfabeto usando el comando *mn*.


### Environment

- **Ecuación**

    El comando `eq` simplifica el uso del entorno `equation`.

    ```latex
    \eq{x+y}
    ```
    El comando anterior imprime:
    $\begin{equation}
    {x+y}
    \end{equation}$

- **Ejemplo**

    ```latex
    \ej{Título}{
    Este es un ejemplo del entorno ejemplo.
    }
    ```
    El comando anterior imprime un entorno de ejemplo con el título "Título" y el texto "Este es un ejemplo del entorno ejemplo."

- **Definición**

    ```latex
    \defi{Título}{
    Este es un ejemplo del entorno definición.
    }
    ```
    El comando anterior imprime un entorno de definición con el título "Título" y el texto "Este es un ejemplo del entorno definición."

- **Teorema**

    ```latex
    \teo{Título}{
    Este es un ejemplo del entorno teorema.
    }
    ```
    El comando anterior imprime un entorno de teorema con el título "Título" y el texto "Este es un ejemplo del entorno teorema."

- **Suposición**

    ```latex
    \supo{Título}{
    Este es un ejemplo del entorno suposición.
    }
    ```
    El comando anterior imprime un entorno de suposición con el título "Título" y el texto "Este es un ejemplo del entorno suposición."

- **Demostración**

    ```latex
    \proof{
    Este es un ejemplo del entorno demostración.
    }
    ```
    El comando anterior imprime un entorno de demostración con el texto "Este es un ejemplo del entorno demostración."


Los comandos para generar estos entornos son:

```latex
\ej{Título}{Este es un ejemplo del entorno ejemplo.}
\defi{Título}{Este es un ejemplo del entorno definición.}
\teo{Título}{Este es un ejemplo del entorno teorema.}
\supo{Título}{Este es un ejemplo del entorno suposición.}
\proof{Título}{Este es un ejemplo del entorno demostración.}
```

### Comandos para Arrays Matemáticos Simples

Para simplificar la escritura de arrays matemáticos en LaTeX, definimos los siguientes comandos:

- **Abrir un Array**

    Utiliza el comando `\open` para iniciar un array matemático:

    ```latex
    \open
    ```

    Este comando abre un entorno `array` dentro de una `equation`, permitiendo la organización de múltiples columnas en una estructura de tabla matemática.

- **Cerrar un Array**

    Utiliza el comando `\close` para cerrar el array matemático:

    ```latex
    \close
    ```

    Este comando cierra el entorno `array` y la `equation`, finalizando la estructura del array.

#### Ejemplo de Uso

Aquí hay un ejemplo de cómo usar estos comandos para crear un array matemático simple:

```latex
\open
a & b & c & d & e & f & g & h \\
i & j & k & l & m & n & o & p \\
q & r & s & t & u & v & w & x \\
\close
```

Imprime:
$\begin{array}{llllllll}
	a & b & c & d & e & f & g & h \\
i & j & k & l & m & n & o & p \\
q & r & s & t & u & v & w & x \\
	\end{array}$
