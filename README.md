# Genetic-Optimization
Developing an optimization algorithm using Genetic Algorithm (GA), and minimizing the Ackley Function with basic GA approach. MECHTRON2MP3 Fall 2023 A2.

# Project Breakdown

In this assignment, we will develop an optimization algorithm. Before we start talking about what
a mathematical optimization is, take a look at A Few Optimization Problems to see where we use
them. <br> <br>
Optimization problems involve the process of finding the best solution from a set of possible
solutions. To understand how we formulate an optimization problem you can take a look at
Appendix. <br> <br>
Genetic Algorithm (GA) is one of the well-known optimization algorithms developed many
years ago. In a genetic algorithm, a population of individuals evolves over time. The stronger
individuals reproduce, and the weaker ones die. The surviving ones can also mutate. With each
individual, there is a fitness number that indicates how strong that individual is. For more details,
see Genetic Algorithm. A genetic algorithm terminates when a given number of iterations is
reached or when a solution is found, that is, an individual with certain fitness. The goal of this
assignment is to minimize Ackley function using basic genetic algorithm approach. <br> <br>
Take a look at the Python code Opt Ackley.ipynb which I used to optimize the Ackley
function using optimization packages available on Python. <br> <br>
In this code, first I did some visualization for Ackley function to have a better understanding
about the objective function. Ackley function has two variables x1 and x2 and by figure we can
already see when x1 = 0 and x2 = 0, the minimum is happening. In this case we know what is
the optimized solution by visualization but it is not always like this. We chose Ackley function a
problem because it is easy do understand and suitable enough to find out about the efficiency of
the GA program you develop. <br> <br>
GA is a popular optimization and search technique inspired by the process of natural selection and evolution. It’s used to find approximate solutions to complex optimization and search
problems. GAs are particularly effective when dealing with large solution spaces, combinatorial optimization problems, and cases where the objective function is non-linear, discontinuous, or has
multiple local optima. <br> <br>

# Function Implementation

Mutation and crossover functions are crucial components of Genetic Algorithms: <br> <br>
Mutation: Mutation is a random alteration of an individual’s genetic code. It introduces
diversity by making small changes in the solution space. For example, in a binary representation,
mutation might flip a 0 to a 1 or vice versa. The mutation rate controls the probability of mutation
for each gene. <br> <br>
Crossover (Recombination): Crossover involves the exchange of genetic material between
two parents to create offspring. The way this exchange occurs depends on the specific crossover
method used. For instance, in one-point crossover, a random point is selected in the genetic code,
and the segments of the parents’ genetic code are swapped at that point to create two offspring.
In two-point crossover, two random points are selected for the exchange. <br> <br>

# Results and Report

By downloading the various files and running required code, results were generated and documented in the PDF file - readme.pdf <br> <br>

GA.c : The file GA.c , is the main code you have and based on what you need, you can all
the function in int main(int argc, char *argv[]) . The specifications of the algorithm
is given by the user. Let’s say if the executable file created after compiling the code is named
GA , I must be able to run the code by the following command in the terminal: <br> <br>
./GA <POPULATION SIZE> <MAX GENERATIONS> <crossover rate> <mutate rate> <stop criteria> <br> <br>
The early stopping criteria in a GA is a mechanism designed to terminate
the algorithm prematurely if certain conditions are met before the maximum number of
generations (MAX GENERATIONS) is reached. One common early stopping criterion is
based on the difference between the current best fitness and the previous best fitness. This
is often referred to as a ”convergence criteria” or ”stagnation criteria.” So I must be able to
run you code by: <br> <br>
./GA 1000 10000 0.5 0.1 1e-16 <br> <br>
Where 1000 is population size, 10000 is maximum generation, 0.5 is crossover rate, the mutation rate is 0.1, and 1e-16 is the stopping criteria. <br> <br>

functions.c : The real implementation of all functions are in functions.c . This is where
you develop are the functions you need in GA.c . Follow the comments inside functions.c
and complete the functions. <br> <br>

In general, for a maximum number of iterations, MAX GENERATIONS given by user, the algorithm
in the main loop will:
1. Compute the fitness values using compute objective function function.
2. Then it compute the probability of each set of decision variables in population .
3. Picking the stronger set of decision variables to reproduce in crossover function based on
crossover rate .
4. Applying mutation on the population based on mutate rate .
5. Until the MAX GENERATIONS is reached or stopping criteria is met.
