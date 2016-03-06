function [newPop]=Crossing(Pop, n)
    newPop = Pop(1:2,:);
    L = length(Pop);
    rd = Random_Pair(L);
    while(size(newPop,1) < n)
        father1 = Pop(rd(1),:);
        father2 = Pop(rd(2),:);
        cut = Random_Pair(29);
        child1 = Child_Generator(father1(1:cut(1)),father2(cut(1)+1:cut(2)-1),father1(cut(2):29));
        child2 = Child_Generator(father2(1:cut(1)),father1(cut(1)+1:cut(2)-1),father2(cut(2):29));
        child1 = Mutation(child1,0.3);
        child2 = Mutation(child2,0.3);
        newPop = [newPop;child1];
        newPop = [newPop;child2];
    end
end