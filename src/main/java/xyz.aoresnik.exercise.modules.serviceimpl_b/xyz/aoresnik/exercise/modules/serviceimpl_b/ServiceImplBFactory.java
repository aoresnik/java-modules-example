package xyz.aoresnik.exercise.modules.serviceimpl_b;

import xyz.aoresnik.exercise.modules.serviceintf.GreeterServiceInterface;

public class ServiceImplBFactory
{
        public static GreeterServiceInterface provider()
        {
                return new GreeterServiceInterface()
                {
                        public void printHello()
                        {
                                System.out.println("Hello world from serviceimpl_b!");
                        }
                };
        }
}
