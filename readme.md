#An MVC5 IDependencyResolver wrapper for Structuremap 3.x
**Works with `MVC Controllers` only. If you need `WebApi Controler` support install the `Structuremap.WebApi2` package.**

[**What it adds to your solution**]

2 directories to the root of your MVC project:

* App_Start (If not already in your solution)
* DependencyResolution

6 Files:

* App_Start/StructuremapMvc.cs
* DependencyResolution/StructureMapDependencyScope.cs
* DependencyResolution/StructureMapScopeModule.cs 
* DependencyResolution/IoC.cs
* DependencyResolution/ControllerConvention.cs
* DependencyResolution/DefaultRegistry.cs (This is where you would define your mappings)


[**Default configuration**]

	public DefaultRegistry() {
		Scan(
			scan => {
				scan.TheCallingAssembly();
				scan.WithDefaultConventions();
				scan.With(new ControllerConvention()); //Ensures a new Controller instance is created each time
			});
		//For<IExample>().Use<Example>();
	}

This configuration will *just work* for any Interfaces and concrete implementations that follow the default convention and are part of the MVC project. I.E. ISomeService.cs implemented with SomeService.cs
