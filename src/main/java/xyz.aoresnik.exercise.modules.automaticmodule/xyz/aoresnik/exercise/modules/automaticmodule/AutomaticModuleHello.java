package xyz.aoresnik.exercise.modules.automaticmodule;

import xyz.aoresnik.exercise.modules.unnamedmodule.UnnamedModuleHello;

public class AutomaticModuleHello
{
        public void printHello()
        {
                System.out.println("Hello world from automaticmodule!");

                // UnnamedModuleHello can't be called from xyz.aoresnik.exercise.modules.main,
                // Because packages from classpath 
                UnnamedModuleHello unnamedModuleHello = new UnnamedModuleHello();
                unnamedModuleHello.printHello();
        }
}
