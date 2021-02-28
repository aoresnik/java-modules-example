module xyz.aoresnik.exercise.modules.main_noauto {
    requires xyz.aoresnik.exercise.modules.module_b;
    requires xyz.aoresnik.exercise.modules.serviceintf;
    requires xyz.aoresnik.exercise.modules.openmodule;

    uses xyz.aoresnik.exercise.modules.serviceintf.GreeterServiceInterface;
}
