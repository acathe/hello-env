using HelloCsharp;

namespace HelloCsharp.Tests;

public class ProgramTests
{
    [Fact]
    public void Main_WritesHelloWorld()
    {
        var originalOut = Console.Out;
        using var writer = new StringWriter();
        Console.SetOut(writer);

        try
        {
            Program.Main();
        }
        finally
        {
            Console.SetOut(originalOut);
        }

        Assert.Equal("Hello, world!" + Environment.NewLine, writer.ToString());
    }
}
