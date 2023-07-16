using System;
using TechTalk.SpecFlow;

namespace Calculo.Steps
{
    [Binding]
    public sealed class CalculoStepDefinitions
    {
        private readonly ScenarioContext calculosOperadoresAritmeticos;

        public CalculoStepDefinitions(ScenarioContext scenarioContext)
        {
            calculosOperadoresAritmeticos = scenarioContext;
        }

        [Given(@"Que a calculadora esteja ligada")]
        public void GivenQueacalculadoraestejaligada()
        {
            calculosOperadoresAritmeticos.Pending();
        }

    }
}