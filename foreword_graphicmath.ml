



{!indexlist}



{C � }
{1 Introduction}
{C  }




{2 Aim}


These modules may be used as interactive calculation constructions when loaded in the [ocaml] pseudo_interpreter,
or as calculation libraries.
They are designed to function in layers. The dispositions of layers may be modified.
The aim is neither to design a standard nor to deliver a software,
but to prove that any mathematician can program in  a few hundreds of hours
an ordinary chapter of a mathematics lecture.

Everything is written in the Ocaml language, the same language as that of utilization.
All the definitions are in fact macro-definitions.
The mathematician may thus modify up to her or his will the definitions
through any text editor and without having to learn any further language.

The principles of writing follow the following hierarchy in decreasing order:
+ the functions must be written in the same language as their utilization,
+ comfort of use is more important than speed,
+ the ease of transition between the different tradeoffs is more important than the tradeoffs themselves,
+ the person who is using the text must have the possibility to redefine or increase any part of it,
+ different tradeoffs between calculation time and accuracy must be available if the situation deserves it,
+ most of the parameters must be chosen at the time of eventual use,
+ if a calculation is difficultied by the crossing of a singularity, it is better to raise an exception rather than silently yield wacky results.


{2 Content}


The file [graphicmath.ml] is the concatenation of the following modules:
{{:./Graphicmath.Util.html} util.ml},
{{:./Graphicmath.Bary.html} bary.ml},
{{:./Graphicmath.Data.html} data.ml},
{{:./Graphicmath.Deg.html} deg.ml},
{{:./Graphicmath.Hash.html} hash.ml},
{{:./Graphicmath.Sparse_vector.html} sparse_vector.ml},
{{:./Graphicmath.Sparse_tensor.html} sparse_tensor.ml},
{{:./Graphicmath.Sparse_matrix.html} sparse_matrix.ml},
{{:./Graphicmath.Mat.html} mat.ml},
{{:./Graphicmath.Fft.html} fft.ml},
{{:./Graphicmath.Matrix.html} matrix.ml},
{{:./Graphicmath.Readwrite.html} readwrite.ml},
{{:./Graphicmath.Infinitesimal.html} infinitesimal.ml},
{{:./Graphicmath.Sci.html} sci.ml},
{{:./Graphicmath.Reduc.html} reduc.ml},
{{:./Graphicmath.Data2.html} data2.ml},
{{:./Graphicmath.Draw.html} draw.ml},
{{:./Graphicmath.Widget.html} widget.ml},
{{:./Graphicmath.Analogic.html} analogic.ml},
{{:./Graphicmath.Spec.html} spec.ml}.

This set of modules is aimed at being used in a graphic environment.

The file {{:../README} README} takes up on the differents uses of the archive set of mathematical tools for Ocaml
and describes different shell scripts found in this archive in order to help compilation.

The mathematician will find in these modules:

- constructions to practice real and integer matrix calculations,
{{:./Graphicmath.Matrix.html} matrix.ml},

- constructions to practice differential and integral calculations,
{{:./Graphicmath.Infinitesimal.html} infinitesimal.ml},

- constructions to approximate solutions of ordinary differential equations of first order,
{{:./Graphicmath.Infinitesimal.html} infinitesimal.ml},

- constructions to practice complex matrix calculations,
{{:./Graphicmath.Reduc.html} reduc.ml},

- constructions to practice calculations on univariate polynomials with real or complex coefficients,
{{:./Graphicmath.Reduc.html} reduc.ml},

- constructions to practice complex calculations in extended precision,
{{:./Graphicmath.Sci.html} sci.ml},

- usual constants,
{{:./Graphicmath.Data.Classical.html} module Classical of data.ml},
{{:./Graphicmath.Sci.html} sci.ml},

- modules for the coefficients of matrices (usual algebraic objects) - and for the indices:
{{:./Graphicmath.Data.html} data.ml}, {{:./Graphicmath.Data2.html} data2.ml}, 

- common convergence acceleration methods,
{{:./Graphicmath.Matrix.html} matrix.ml}
{{:./Graphicmath.Sci.html} sci.ml},

- simple random generators with values in common Lie groups,
{{:./Graphicmath.Matrix.html} matrix.ml},
{{:./Graphicmath.Reduc.html} reduc.ml},

- utilities to exchange vectors, lists and matrices with text files, binary files, some picture files and some sound files (in the Audacity format),
{{:./Graphicmath.Readwrite.html} readwrite.ml},

- calculation utilities for polynomial degrees,
{{:./Graphicmath.Deg.html} deg.ml},

- tools for handling sparse vectors, matrices and tensors,
the coefficients {e and indices} being polymorphic:
{{:./Graphicmath.Sparse_vector.html} sparse_vector.ml},
{{:./Graphicmath.Sparse_tensor.html} sparse_tensor.ml},
{{:./Graphicmath.Sparse_matrix.html} sparse_matrix.ml},

- tools for handling polymorphic matrices, indifferently full or sparse,
{{:./Graphicmath.Mat.html} mat.ml},

- tools for fast Fourier transorms,
{{:./Graphicmath.Fft.html} fft.ml},

- basic tools necessary to several modules,
{{:./Graphicmath.Util.html} util.ml},

- tools for handling weighted sets,
{{:./Graphicmath.Bary.html} bary.ml},

- tools for handling weighted hash tables,
{{:./Graphicmath.Hash.html} hash.ml},

- constructions to draw on screen graphs, curves, surfaces,
vector fields and frame fields in dimension two and three,
with points, segments, casually with anti-aliassing,
{{:./Graphicmath.Draw.html} draw.ml},

- gadgets in order to make interactive graphical windows,
{{:./Graphicmath.Widget.html} widget.ml},

- utilities to digitize oscillograms and photographic pictures of graphic recorders,
{{:./Graphicmath.Analogic.html} analogic.ml},

- utilities to find one's way in the specification and the source code,
{{:./Graphicmath.Spec.html} spec.ml}, among others

+ the function {e which} which permits to know to which module belongs a function
(its range gets out of the scope of the archive of mathematic tools),
+ the function {e how} which displays the source code of the function,
+ the function {e what} which displays the corresponding paragraph in the html documentation of the module,
+ the function {e why} which searches for uses of the function.

- prefabricated pieces to quickly make other constructions,

- complete source codes permitting to resize everything to any use,

- a motley wildlife of various mathematical calculations; for example,
different function are presented to calculate the inverse of a real matrix,
to approximate the roots of a polynomial,
offering more or less slowlyness of execution and different levels of precision.


{2 Conventions}


The interdependency of the modules is described in {{:../depend.txt} depend.txt}

All the needed informations are in the present specifications documents
and the source codes. The need for further documentation can only be
the symptom of a weakness of the specification or of the program; 
a correction is thus necessary.

The calculations discussed here deal with general mathematics; unless otherwise,
the specifications and proofs of the algorithms are either immediately visible or
contained in the classical literature.
In case the specification of an algorithm is unknown, a warning is explicitly stated.

A function is {e sealed} if there is no sharing between the input variables and the output value.
This is the expected behavior of usual mathematical functions.
The present specification must allow in every case to decide if the programmed functions are sealed or not.
Enough copy functions are provided in order to seal any function, at the expense of increased calculation time and memory footprint.


{2 Comments}


The delivered functions are rough from workshop and require the usual care of use.

The plasticity of the Ocaml language allows to get as closed to the hardware as to
insure a moderate time of execution, as well as to reach high abstraction 
through mutually recursive definitions for some functions.

The rigidity of the typing allows a quick and easy setting of the programs.


These modules are distributed under the same licence as Ocaml.



{C � }
{1 Avant-propos}


{2 But}


Ces modules peuvent �tre utilis�s comme constructions interactives de calcul quand charg�s
dans le pseudo_interpreteur [ocaml], ou comme biblioth�ques de calcul.
Ils sont con�us pour fonctionner en couches. La disposition des couches peut �tre modifi�e.
Le but n'est ni de r�diger une norme ni de fournir un logiciel,
mais de d�montrer que n'importe quel math�maticien peut programmer en quelques centaines d'heures 
un chapitre courant d'un cours de math�matiques.

Tout est r�dig� en langage Ocaml, le m�me langage que celui d'utilisation.
Toutes les d�finitions sont en fait des macro-d�finitions.
La math�maticienne ou le math�maticien peut ainsi modifier � sa guise les d�finitions 
� l'aide de n'importe quel �diteur de texte et sans avoir besoin d'apprendre un langage suppl�mentaire.

Les principes de r�daction suivent la hi�rarchie suivante dans l'ordre d�croissant :
+ les fonctions doivent �tre �crites dans le m�me langage que leur utilisation,
+ le confort d'utilisation est plus important que la vitesse,
+ la fluidit� de passage entre les diff�rents compromis est plus importante que les compromis eux-m�mes,
+ la personne qui utilise le texte doit pouvoir en red�finir ou augmenter ais�ment n'importe quelle partie,
+ diff�rents compromis entre temps de calcul et pr�cision doivent �tre disponibles si la situation le m�rite,
+ la plupart des param�tres doivent �tre choisis au moment de l'utilisation finale,
+ si un calcul est mis en difficult� par la travers�e d'une singularit�, il vaut mieux lever une exception plut�t que de produire silencieusement des r�sultats farfelus.


{2 Contenu}


Le fichier [graphicmath.ml] est la concat�nation des modules suivants :
{{:./Graphicmath.Util.html} util.ml},
{{:./Graphicmath.Bary.html} bary.ml},
{{:./Graphicmath.Data.html} data.ml},
{{:./Graphicmath.Deg.html} deg.ml},
{{:./Graphicmath.Hash.html} hash.ml},
{{:./Graphicmath.Sparse_vector.html} sparse_vector.ml},
{{:./Graphicmath.Sparse_tensor.html} sparse_tensor.ml},
{{:./Graphicmath.Sparse_matrix.html} sparse_matrix.ml},
{{:./Graphicmath.Mat.html} mat.ml},
{{:./Graphicmath.Fft.html} fft.ml},
{{:./Graphicmath.Matrix.html} matrix.ml},
{{:./Graphicmath.Readwrite.html} readwrite.ml},
{{:./Graphicmath.Infinitesimal.html} infinitesimal.ml},
{{:./Graphicmath.Sci.html} sci.ml},
{{:./Graphicmath.Reduc.html} reduc.ml},
{{:./Graphicmath.Data2.html} data2.ml},
{{:./Graphicmath.Draw.html} draw.ml},
{{:./Graphicmath.Widget.html} widget.ml},
{{:./Graphicmath.Analogic.html} analogic.ml},
{{:./Graphicmath.Spec.html} spec.ml}.

Cet ensemble de modules est destin� � une utilisation dans un environnement graphique.

Le fichier {{:../README} README} aborde les diff�rents usages de l'ensemble de l'archive d'outils math�matiques pour Ocaml
et d�crit diff�rents scripts shell pr�sents dans cette archive pour faciliter la compilation.

La math�maticienne ou le math�maticien trouvera dans ces modules :

- des outils permettant de pratiquer le calcul matriciel r�el et entier,
{{:./Graphicmath.Matrix.html} matrix.ml},

- des outils permettant de pratiquer le calcul diff�rentiel et int�gral,
{{:./Graphicmath.Infinitesimal.html} infinitesimal.ml},

- des outils permettant d'approcher des solutions d'�quations diff�rentielles ordinaires du premier ordre,
{{:./Graphicmath.Infinitesimal.html} infinitesimal.ml},

- des outils permettant de pratiquer le calcul matriciel complexe,
{{:./Graphicmath.Reduc.html} reduc.ml},

- des outils permettant de pratiquer le calcul sur les polyn�mes � coefficients r�els et complexes,
{{:./Graphicmath.Reduc.html} reduc.ml},

- des outils permettant de pratiquer le calcul complexe en pr�cision �tendue,
{{:./Graphicmath.Sci.html} sci.ml},

- des constantes usuelles,
{{:./Graphicmath.Data.Classical.html} module Classical de data.ml},
{{:./Graphicmath.Sci.html} sci.ml},

- des modules pour les coefficients des matrices (objets alg�briques usuels) - et pour les indices :
{{:./Graphicmath.Data.html} data.ml}, {{:./Graphicmath.Data2.html} data2.ml}, 

- des m�thodes usuelles d'acc�l�ration de convergence,
{{:./Graphicmath.Matrix.html} matrix.ml},
{{:./Graphicmath.Sci.html} sci.ml},

- des g�n�rateurs al�atoires simples � valeurs dans des groupes de Lie usuels,
{{:./Graphicmath.Matrix.html} matrix.ml},
{{:./Graphicmath.Reduc.html} reduc.ml},

- des utilitaires pour �changer vecteurs, listes et matrices avec des fichiers textes, des fichiers binaires, quelques fichiers d'images et des fichiers sons (au format Audacity),
{{:./Graphicmath.Readwrite.html} readwrite.ml},

- des outils de calcul pour les degr�s des polyn�mes,
{{:./Graphicmath.Deg.html} deg.ml},

- des outils de manipulation des vecteurs, matrices et tenseurs creux,
les coefficients {e et indices} �tant polymorphes :
{{:./Graphicmath.Sparse_vector.html} sparse_vector.ml},
{{:./Graphicmath.Sparse_tensor.html} sparse_tensor.ml},
{{:./Graphicmath.Sparse_matrix.html} sparse_matrix.ml},

- des outils pour traiter les vecteurs, tenseur et matrices polymorphes, indiff�remment pleins ou creux,
{{:./Math.Mat.html} mat.ml},

- des outils pour les transform�es de Fourier rapides,
{{:./Math.Fft.html} fft.ml},

- des outils de bases n�cessaires � plusieurs modules,
{{:./Graphicmath.Util.html} util.ml},

- des outils pour manipuler les ensembles � poids,
{{:./Math.Bary.html} bary.ml},

- des outils pour manipuler les tables de hachage � poids,
{{:./Math.Hash.html} hash.ml},

- des outils permettant de tracer � l'�cran des graphes, courbes, surfaces, 
champs de vecteurs et de rep�res en dimensions deux et trois,
avec des points, des segments, �ventuellement avec antialiassage,
{{:./Graphicmath.Draw.html} draw.ml},

- des gadgets pour construire des fen�tres graphiques interactives,
{{:./Graphicmath.Widget.html} widget.ml},

- des utilitaires pour num�riser des oscillogrammes et des photographies de tables tra�antes,
{{:./Graphicmath.Analogic.html} analogic.ml},

- des utilitaires pour se rep�rer dans la sp�cification et le code source,
{{:./Graphicmath.Spec.html} spec.ml}, notamment

+ la fonction {e which} qui permet de savoir � quels modules appartient une fonction 
(sa port�e sort du cadre de l'archive d'outils math�matiques),
+ la fonction {e how} qui affiche le code source de la fonction,
+ la fonction {e what} qui affiche le paragraphe correspondant dans la documentation html du module,
+ la fonction {e why} qui recherche les utilisations de la fonction.

- des pi�ces pr�fabriqu�es permettant de construire rapidement d'autres outils,

- les codes sources complets permettant de tout retailler � la mesure d'une utilisation quelconque,

- une faune bigarr�e de calculs math�matiques divers ; par exemple, 
diff�rentes fonctions sont pr�sent�es pour calculer l'inverse d'une matrice r�elle,
pour approcher les racines d'un polyn�me,
offrant des ex�cutions plus ou moins lentes et diff�rents niveaux de pr�cision.


{2 Conventions}


L'interd�pendance des modules est d�crite dans {{:../depend.txt} depend.txt}

Toutes les informations n�cessaires sont dans les pr�sents documents de sp�cifications
et les codes-sources. Le besoin d'une documentation suppl�mentaire ne peut �tre 
que le sympt�me de l'insuffisance de la sp�cification ou du programme ; 
une correction est alors n�cessaire.

Les calculs abord�s ici concernent les math�matiques g�n�rales ; sauf avis contraire,
les sp�cifications et d�monstrations des algorithmes sont soit imm�diatement visibles 
soit contenues dans la litt�rature classique.
Dans le cas o� la sp�cification d'un algorithme est inconnue, 
un avertissement est explicitement marqu�.

Une fonction est {e �tanche} quand il n'y a aucun partage entre les variables fournies en entr�e et la valeur obtenue en sortie.
C'est le comportement attendu des fonctions math�matiques habituelles. 
La pr�sente sp�cification doit permettre de d�cider dans tous les cas si les fonctions programm�es sont �tanches ou pas.
Suffisamment de fonctions de recopies sont fournies pour �tanch�ifier n'importe quelle fonction, au prix d'un temps de calcul et d'un encombrement de m�moire augment�s.


{2 Commentaires}


Les fonctions d�livr�es sont brutes de fonderie et r�clament les pr�cautions habituelles d'utilisation.

La plasticit� du langage Ocaml permet aussi bien de coller au mat�riel d'assez pr�s 
pour assurer une dur�e d'ex�cution raisonnable, que de planer vers de hautes sph�res d'abstraction
gr�ce � des d�finitions mutuellement r�cursives pour certaines fonctions.

La rigidit� du typage permet une mise au point rapide et facile des programmes.


Ces modules sont distribu�s selon la m�me licence qu'Ocaml.


{C Copyright St�phane Grognet }
{C Laboratoire de math�matiques Jean Leray UMR 6629 CNRS }
{C F�d�ration de recherche math�matique des Pays de la Loire }
{C IREM des Pays de la Loire - Universit� de Nantes }
{C version 0.4}
@version 0.4
@author St�phane Grognet
@since septembre 2011, 2012




