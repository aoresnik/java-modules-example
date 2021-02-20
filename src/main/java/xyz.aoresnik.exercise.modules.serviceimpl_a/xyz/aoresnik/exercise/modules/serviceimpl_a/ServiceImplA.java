package xyz.aoresnik.exercise.modules.serviceimpl_a;

import xyz.aoresnik.exercise.modules.serviceintf.GreeterServiceInterface;

public class ServiceImplA implements GreeterServiceInterface
{
        public void printHello()
        {
                System.out.println("Hello world from serviceimpl_a!");
        }
}
