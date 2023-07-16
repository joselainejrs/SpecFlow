using System;
using TechTalk.SpecFlow;

namespace Cadastro.Steps
{
    [Binding]
    public sealed class CadastroStepDefinitions
    {
        private readonly ScenarioContext CadastroContext;

        public CadastroStepDefinitions(ScenarioContext scenarioContext)
        {
            CadastroContext = scenarioContext;
        }

        [Given(@"Que esteja na tela de Cadastro")]
        public void GivenQueestejanateladeCadastro()
        {
            CadastroContext.Pending();
        }

    }
}