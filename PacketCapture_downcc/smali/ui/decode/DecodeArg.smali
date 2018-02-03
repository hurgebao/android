.class public final Lui/decode/DecodeArg;
.super Ljava/lang/Object;
.source "DecodeInfo.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final captFile:Ljava/lang/String;

.field private final ip:Ljava/lang/String;

.field private final pkgs:Ljava/lang/String;

.field private final port:I

.field private final protocol:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "captFile"    # Ljava/lang/String;
    .param p2, "pkgs"    # Ljava/lang/String;
    .param p3, "protocol"    # I
    .param p4, "port"    # I
    .param p5, "ip"    # Ljava/lang/String;

    .prologue
    const-string v0, "captFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ip"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui/decode/DecodeArg;->captFile:Ljava/lang/String;

    iput-object p2, p0, Lui/decode/DecodeArg;->pkgs:Ljava/lang/String;

    iput p3, p0, Lui/decode/DecodeArg;->protocol:I

    iput p4, p0, Lui/decode/DecodeArg;->port:I

    iput-object p5, p0, Lui/decode/DecodeArg;->ip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lui/decode/DecodeArg;

    if-eqz v2, :cond_1

    check-cast p1, Lui/decode/DecodeArg;

    iget-object v2, p0, Lui/decode/DecodeArg;->captFile:Ljava/lang/String;

    iget-object v3, p1, Lui/decode/DecodeArg;->captFile:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lui/decode/DecodeArg;->pkgs:Ljava/lang/String;

    iget-object v3, p1, Lui/decode/DecodeArg;->pkgs:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lui/decode/DecodeArg;->protocol:I

    iget v3, p1, Lui/decode/DecodeArg;->protocol:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget v2, p0, Lui/decode/DecodeArg;->port:I

    iget v3, p1, Lui/decode/DecodeArg;->port:I

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    iget-object v2, p0, Lui/decode/DecodeArg;->ip:Ljava/lang/String;

    iget-object v3, p1, Lui/decode/DecodeArg;->ip:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public final getCaptFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lui/decode/DecodeArg;->captFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lui/decode/DecodeArg;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getPkgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lui/decode/DecodeArg;->pkgs:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lui/decode/DecodeArg;->port:I

    return v0
.end method

.method public final getProtocol()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lui/decode/DecodeArg;->protocol:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lui/decode/DecodeArg;->captFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lui/decode/DecodeArg;->pkgs:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lui/decode/DecodeArg;->protocol:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lui/decode/DecodeArg;->port:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lui/decode/DecodeArg;->ip:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecodeArg(captFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/DecodeArg;->captFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/DecodeArg;->pkgs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui/decode/DecodeArg;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui/decode/DecodeArg;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui/decode/DecodeArg;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
