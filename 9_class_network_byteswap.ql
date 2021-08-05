import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        exists(MacroInvocation invoc |
            invoc.getMacroName() in ["ntohl", "ntohll", "ntohs"]
            and invoc.getExpr() = this
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap"