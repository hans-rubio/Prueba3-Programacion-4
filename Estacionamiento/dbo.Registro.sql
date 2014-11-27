CREATE TABLE [dbo].[Registro] (
    [Id]            INT          NOT NULL IDENTITY,
    [Patente]       VARCHAR (6)  NOT NULL,
    [Fecha_ingreso] DATETIME     NOT NULL,
    [Fecha_salida]  DATETIME     NULL,
    [Estado]        VARCHAR (6)  NOT NULL,
    [Tiempo]        INT          NULL,
    [Monto_Pagar]   DECIMAL (18) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

