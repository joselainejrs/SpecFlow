using System;
using TechTalk.SpecFlow;

namespace Cadastro.Steps
{
    [Binding]
    public class CadastroStepDefinitions
    {
        private readonly ScenarioContext CadastroContext;

        public CadastroStepDefinitions(ScenarioContext scenarioContext)
        {
            CadastroContext = scenarioContext;
        }

        [Given(@"Na Cadastro")]
        public void GivenNaCadastro()
        {
            CadastroContext.Pending();
        }

        [Then(@"Que realize o cadastro")]
        public void ThenQuerealizeocadastro(Table table)
        {
            CadastroContext.Pending();
        }

        [Given(@"Que esteja na tela de Cadastro")]
        public void GivenQueestejanateladeCadastro(Table table)
        {
            CadastroContext.Pending();
        }

    }
}