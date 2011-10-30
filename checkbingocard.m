function won=checkbingocard(card)

won=any(all(card==0)) || any(all(card'==0)) || ...
    all(diag(card)==0) || all (diag(card(:,size(card,2):-1:1))==0);
