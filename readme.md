#An MVC5 IDependencyResolver wrapper for Structuremap 3.x
**Works with `MVC Controllers` only. If you need `WebApi Controler` support install the `Structuremap.WebApi2` package.**

[**What it adds to your solution**]

2 directories to the root of your MVC project:

* App_Start (If not already in your solution)
* DependencyResolution

3 Files:

* App_Start/StructuremapMvc.cs
* DependencyResolution/StructureMapDependencyScope.cs 
* DependencyResolution/IoC.cs (Structuremap's ObjectFactory Initialization, this is where you would define your mappings)


[**Default configuration**]

	public static IContainer Initialize() {
            ObjectFactory.Initialize(x =>
                        {
                            x.Scan(scan =>
                                    {
                                        scan.TheCallingAssembly();
                                        scan.WithDefaultConventions();
                                    });
            //                x.For<IExample>().Use<Example>();
                        });
            return ObjectFactory.Container;
        }

This configuration will *just work* for any Interfaces and concrete implementations that follow the default convention and are part of the MVC project. I.E. ISomeService.cs implemented with SomeService.cs
