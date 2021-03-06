.class public final Lcom/bumptech/glide/load/engine/GlideException;
.super Ljava/lang/Exception;
.source "GlideException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;
    }
.end annotation


# static fields
.field private static final EMPTY_ELEMENTS:[Ljava/lang/StackTraceElement;


# instance fields
.field private final causes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/bumptech/glide/load/DataSource;

.field private key:Lcom/bumptech/glide/load/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/bumptech/glide/load/engine/GlideException;->EMPTY_ELEMENTS:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 31
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "causes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/bumptech/glide/load/engine/GlideException;->EMPTY_ELEMENTS:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/GlideException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 37
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/GlideException;->causes:Ljava/util/List;

    .line 38
    return-void
.end method

.method private addRootCauses(Ljava/lang/Exception;Ljava/util/List;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "rootCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/GlideException;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 99
    check-cast v1, Lcom/bumptech/glide/load/engine/GlideException;

    .line 100
    .local v1, "glideException":Lcom/bumptech/glide/load/engine/GlideException;
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/GlideException;->getCauses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/engine/GlideException;->addRootCauses(Ljava/lang/Exception;Ljava/util/List;)V

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "glideException":Lcom/bumptech/glide/load/engine/GlideException;
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    return-void
.end method

.method private static appendCauses(Ljava/util/List;Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "causes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/engine/GlideException;->appendCausesWrapped(Ljava/util/List;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static appendCausesWrapped(Ljava/util/List;Ljava/lang/Appendable;)V
    .locals 6
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "causes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 162
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 163
    const-string v4, "Cause ("

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    .line 164
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v4

    const-string v5, " of "

    .line 165
    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v4

    .line 166
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v4

    const-string v5, "): "

    .line 167
    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 169
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 170
    .local v0, "cause":Ljava/lang/Exception;
    instance-of v4, v0, Lcom/bumptech/glide/load/engine/GlideException;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 171
    check-cast v1, Lcom/bumptech/glide/load/engine/GlideException;

    .line 172
    .local v1, "glideCause":Lcom/bumptech/glide/load/engine/GlideException;
    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/engine/GlideException;->printStackTrace(Ljava/lang/Appendable;)V

    .line 162
    .end local v1    # "glideCause":Lcom/bumptech/glide/load/engine/GlideException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {v0, p1}, Lcom/bumptech/glide/load/engine/GlideException;->appendExceptionMessage(Ljava/lang/Exception;Ljava/lang/Appendable;)V

    goto :goto_1

    .line 177
    .end local v0    # "cause":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private static appendExceptionMessage(Ljava/lang/Exception;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    const-string v2, ": "

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e1":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private printStackTrace(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/engine/GlideException;->appendExceptionMessage(Ljava/lang/Exception;Ljava/lang/Appendable;)V

    .line 125
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/GlideException;->getCauses()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/GlideException;->appendCauses(Ljava/util/List;Ljava/lang/Appendable;)V

    .line 126
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method

.method public getCauses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException;->causes:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException;->dataClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/GlideException;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException;->dataSource:Lcom/bumptech/glide/load/DataSource;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/GlideException;->dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException;->key:Lcom/bumptech/glide/load/Key;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/GlideException;->key:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public getRootCauses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "rootCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-direct {p0, p0, v0}, Lcom/bumptech/glide/load/engine/GlideException;->addRootCauses(Ljava/lang/Exception;Ljava/util/List;)V

    .line 80
    return-object v0
.end method

.method public logRootCauses(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/GlideException;->getRootCauses()Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "causes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root cause ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {p1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/GlideException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 111
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/PrintStream;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/GlideException;->printStackTrace(Ljava/lang/Appendable;)V

    .line 116
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/GlideException;->printStackTrace(Ljava/lang/Appendable;)V

    .line 121
    return-void
.end method

.method setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V
    .locals 0
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/GlideException;->key:Lcom/bumptech/glide/load/Key;

    .line 46
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/GlideException;->dataSource:Lcom/bumptech/glide/load/DataSource;

    .line 47
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/GlideException;->dataClass:Ljava/lang/Class;

    .line 48
    return-void
.end method
