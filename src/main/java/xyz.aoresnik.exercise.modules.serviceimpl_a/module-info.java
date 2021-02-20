module xyz.aoresnik.exercise.modules.serviceimpl_a {
    requires transitive xyz.aoresnik.exercise.modules.serviceintf;

    exports xyz.aoresnik.exercise.modules.serviceimpl_a;

    provides xyz.aoresnik.exercise.modules.serviceintf.GreeterServiceInterface with xyz.aoresnik.exercise.modules.serviceimpl_a.ServiceImplA;
}
