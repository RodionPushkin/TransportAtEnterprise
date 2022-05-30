using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace TransportAtEnterpiseTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void GetNumbers_Numbers_ReturnsTrue()
        {
            //Arrange
            string text = "111fff---fff111";
            string ex = "111111";
            //Act
            string act = TransportAtEnterprise.Classes.AppData.GetNumbers(text);
            Assert.AreEqual(ex,act);
        }

        [TestMethod]
        public void GetNumbers_TextNull_ReturnsTrue()
        {
            //Arrange
            string text = "";
            string ex = "";
            //Act
            string act = TransportAtEnterprise.Classes.AppData.GetNumbers(text);
            Assert.AreEqual(ex,act);
        }

        [TestMethod]
        public void GetLetters_Letters_ReturnsTrue()
        {
            //arrange
            string text = "111fff---fff111дадада";
            string ex = "ffffffдадада";
            //act
            string act = TransportAtEnterprise.Classes.AppData.GetLetters(text);
            Assert.AreEqual(ex, act);
        }

        [TestMethod]
        public void GetLetters_TextNull_ReturnsTrue()
        {
            //arrange
            string text = "";
            string ex = "";
            //act
            string act = TransportAtEnterprise.Classes.AppData.GetLetters(text);
            Assert.AreEqual(ex, act);
        }
    }
}
