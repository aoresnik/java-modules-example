package xyz.aoresnik.exercise.modules.main;

import xyz.aoresnik.exercise.modules.module_b.*;
import xyz.aoresnik.exercise.modules.module_c.*;
import xyz.aoresnik.exercise.modules.automaticmodule.*;

import xyz.aoresnik.exercise.modules.serviceintf.*;

import java.lang.reflect.*;

import java.util.ServiceLoader;

public class MainHello
{

        public static void main(String[] args) throws Exception
        {
                System.out.println("Hello world from main module!");

                ModuleBHello moduleBHello = new ModuleBHello();
                moduleBHello.printHello();

                ModuleCHello moduleCHello = new ModuleCHello();
                moduleCHello.printHello();

                ServiceLoader<GreeterServiceInterface> loader = ServiceLoader.load(GreeterServiceInterface.class);
                for (GreeterServiceInterface greeter : loader)
                {
                        greeter.printHello();
                }

                Class<?> openModuleHelloClass = Class.forName("xyz.aoresnik.exercise.modules.openmodule.OpenModuleHello");
                Object openModuleHello = openModuleHelloClass.getDeclaredConstructor().newInstance();
                Method openModulePrintHelloMethod = openModuleHelloClass.getMethod("printHello");
                openModulePrintHelloMethod.invoke(openModuleHello);

                AutomaticModuleHello automaticModuleHello = new AutomaticModuleHello();
                automaticModuleHello.printHello();
        }

}
