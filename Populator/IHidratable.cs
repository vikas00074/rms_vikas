namespace Populator
{
    internal interface IHidratable<T> 
        where T : IHidratable<T>
    {
        T Hidrate();
    }
}