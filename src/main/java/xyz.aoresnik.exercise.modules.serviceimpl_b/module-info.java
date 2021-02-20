module xyz.aoresnik.exercise.modules.serviceimpl_b {
    requires transitive xyz.aoresnik.exercise.modules.serviceintf;

    exports xyz.aoresnik.exercise.modules.serviceimpl_b;

    provides xyz.aoresnik.exercise.modules.serviceintf.GreeterServiceInterface with xyz.aoresnik.exercise.modules.serviceimpl_b.ServiceImplBFactory;
}
