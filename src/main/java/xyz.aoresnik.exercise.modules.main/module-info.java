module xyz.aoresnik.exercise.modules.main {
    exports xyz.aoresnik.exercise.modules.main;
    requires xyz.aoresnik.exercise.modules.module_b;
    requires xyz.aoresnik.exercise.modules.serviceintf;
    requires xyz.aoresnik.exercise.modules.openmodule;
    requires xyz.aoresnik.exercise.modules.automaticmodule;

    uses xyz.aoresnik.exercise.modules.serviceintf.GreeterServiceInterface;
}
