module xyz.aoresnik.exercise.modules.main_noauto {
    exports xyz.aoresnik.exercise.modules.main;
    requires xyz.aoresnik.exercise.modules.module_b;
    requires xyz.aoresnik.exercise.modules.serviceintf;
    requires xyz.aoresnik.exercise.modules.openmodule;

    uses xyz.aoresnik.exercise.modules.serviceintf.GreeterServiceInterface;
}
