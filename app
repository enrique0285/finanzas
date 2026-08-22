<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Patrimonio</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700&family=IBM+Plex+Mono:wght@400;500;600&family=Inter:wght@400;500;600;700&display=swap');

:root{
  --ink:#12161F; --ink-2:#1B212D; --ink-3:#242B39;
  --line: rgba(240,235,220,0.12);
  --paper:#F6F2E7; --brass:#C6A24D; --brass-bright:#E3C275;
  --burgundy:#B5504A; --sage:#7C9A78;
  --ink-text:#E9E4D6; --ink-text-dim:#A6A18E;
}
*{box-sizing:border-box;}
body{margin:0;background:var(--ink);color:var(--ink-text);font-family:'Inter',sans-serif;min-height:100vh;}
.app{max-width:1180px;margin:0 auto;padding:0 0 64px;}

.ticker-wrap{background:var(--paper);border-bottom:2px solid var(--brass);overflow:hidden;position:relative;height:42px;}
.ticker-track{display:flex;align-items:center;gap:36px;white-space:nowrap;position:absolute;animation:scroll 42s linear infinite;font-family:'IBM Plex Mono',monospace;font-size:13px;color:var(--ink);padding-left:24px;}
@keyframes scroll{from{transform:translateX(0);}to{transform:translateX(-50%);}}
.tick{display:flex;align-items:center;gap:8px;}
.tick .sym{font-weight:600;letter-spacing:.02em;}
.tick .up{color:#3F6B3B;} .tick .down{color:#8C2F2A;}
.tick .dot{width:4px;height:4px;border-radius:50%;background:#B8AF95;margin-left:16px;}

.grouptabs{display:flex;gap:6px;align-items:center;padding:16px 32px 0;flex-wrap:wrap;}
.grouptabs button.gtab{background:var(--ink-2);border:1px solid var(--line);color:var(--ink-text-dim);font-family:'IBM Plex Mono',monospace;font-size:12.5px;padding:9px 16px;border-radius:20px;cursor:pointer;}
.grouptabs button.gtab.active{background:var(--brass);color:var(--ink);border-color:var(--brass);font-weight:600;}
.grouptabs .gtab-add{background:transparent;border:1px dashed var(--line);color:var(--ink-text-dim);}

header{padding:20px 32px 24px;border-bottom:1px solid var(--line);display:flex;justify-content:space-between;align-items:flex-end;gap:20px;flex-wrap:wrap;}
.eyebrow{font-family:'IBM Plex Mono',monospace;font-size:11px;letter-spacing:.14em;text-transform:uppercase;color:var(--brass-bright);margin:0 0 10px;display:flex;align-items:center;gap:10px;}
h1{font-family:'Fraunces',serif;font-weight:600;font-size:38px;margin:0;letter-spacing:-.01em;}
.meta{font-size:12.5px;color:var(--ink-text-dim);margin-top:8px;font-family:'IBM Plex Mono',monospace;display:flex;align-items:center;gap:10px;flex-wrap:wrap;}
.btn{background:var(--brass);color:var(--ink);border:none;font-family:'Inter',sans-serif;font-weight:600;font-size:13.5px;padding:11px 18px;border-radius:2px;cursor:pointer;transition:background .15s ease,transform .1s ease;white-space:nowrap;}
.btn:hover{background:var(--brass-bright);}
.btn:active{transform:translateY(1px);}
.btn.ghost{background:transparent;border:1px solid var(--line);color:var(--ink-text);}
.btn.ghost:hover{border-color:var(--brass);}
.btn.small{padding:6px 11px;font-size:11.5px;}
.btn.tiny{padding:4px 9px;font-size:11px;}
.btn.danger{background:transparent;border:1px solid rgba(181,80,74,.5);color:var(--burgundy);}
.btn.danger:hover{background:rgba(181,80,74,.15);}
.btn.pencil{background:transparent;border:none;color:var(--ink-text-dim);padding:4px 6px;font-size:12px;}
.spin{display:inline-block;animation:spin .8s linear infinite;}
@keyframes spin{to{transform:rotate(360deg);}}
.header-actions{display:flex;gap:8px;flex-wrap:wrap;}

.group-toggle{display:flex;gap:8px;margin:24px 32px 0;flex-wrap:wrap;}
.group-toggle button{background:var(--ink-2);border:1px solid var(--line);color:var(--ink-text-dim);font-family:'IBM Plex Mono',monospace;font-size:12px;padding:8px 16px;border-radius:20px;cursor:pointer;}
.group-toggle button.active{background:var(--brass);color:var(--ink);border-color:var(--brass);font-weight:600;}

.kpis{display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:1px;background:var(--line);margin:14px 32px 0;border:1px solid var(--line);}
.kpi{background:var(--ink-2);padding:20px 18px;}
.kpi .label{font-family:'IBM Plex Mono',monospace;font-size:10px;text-transform:uppercase;letter-spacing:.1em;color:var(--ink-text-dim);margin-bottom:9px;}
.kpi .value{font-family:'Fraunces',serif;font-size:24px;font-weight:600;}
.kpi .sub{font-family:'IBM Plex Mono',monospace;font-size:11.5px;margin-top:6px;}
.pos{color:var(--sage);} .neg{color:var(--burgundy);}

section{padding:44px 32px 0;}
.section-head{display:flex;justify-content:space-between;align-items:center;margin-bottom:20px;flex-wrap:wrap;gap:12px;}
.section-title{font-family:'Fraunces',serif;font-size:21px;font-weight:600;}
.section-sub{font-family:'IBM Plex Mono',monospace;font-size:11.5px;color:var(--ink-text-dim);margin-top:4px;max-width:640px;line-height:1.5;}
.toggle{display:flex;border:1px solid var(--line);border-radius:2px;overflow:hidden;}
.toggle button{background:transparent;border:none;color:var(--ink-text-dim);font-family:'IBM Plex Mono',monospace;font-size:12px;padding:8px 16px;cursor:pointer;}
.toggle button.active{background:var(--brass);color:var(--ink);font-weight:600;}
select.filter{background:var(--ink-2);color:var(--ink-text);border:1px solid var(--line);padding:8px 12px;font-family:'IBM Plex Mono',monospace;font-size:12px;border-radius:2px;}

.breakdown{display:flex;flex-direction:column;gap:14px;}
.bar-row{display:grid;grid-template-columns:140px 1fr 170px;align-items:center;gap:16px;}
.bar-row.evo{grid-template-columns:90px 1fr 150px;}
.bar-name{font-size:13.5px;font-weight:600;}
.bar-track{height:22px;background:var(--ink-3);border-radius:1px;overflow:hidden;display:flex;}
.bar-fill{height:100%;transition:width .6s cubic-bezier(.2,.8,.2,1);}
.bar-fill.inv{background:linear-gradient(90deg,var(--brass) 0%,var(--brass-bright) 100%);}
.bar-fill.cash{background:linear-gradient(90deg,var(--sage) 0%,#96B592 100%);}
.legend{display:flex;gap:18px;margin-bottom:16px;font-family:'IBM Plex Mono',monospace;font-size:11px;color:var(--ink-text-dim);}
.legend .dot{display:inline-block;width:9px;height:9px;border-radius:2px;margin-right:6px;vertical-align:middle;}
.legend .dot.inv{background:var(--brass);}
.legend .dot.cash{background:var(--sage);}
.bar-val{font-family:'IBM Plex Mono',monospace;font-size:12.5px;text-align:right;color:var(--ink-text-dim);}
.bar-val b{color:var(--ink-text);font-weight:600;}

.table-wrap{border:1px solid var(--line);overflow-x:auto;}
table{border-collapse:collapse;width:100%;min-width:960px;}
table.narrow{min-width:0;}
thead th{text-align:left;font-family:'IBM Plex Mono',monospace;font-size:10.5px;text-transform:uppercase;letter-spacing:.08em;color:var(--ink-text-dim);padding:13px 14px;border-bottom:1px solid var(--line);background:var(--ink-2);position:sticky;top:0;}
tbody td{padding:11px 12px;font-size:13px;border-bottom:1px solid var(--line);font-family:'IBM Plex Mono',monospace;}
tbody td.name{font-family:'Inter',sans-serif;font-weight:600;font-size:13.5px;}
tbody tr:hover{background:var(--ink-3);}
.tag{font-family:'Inter',sans-serif;font-size:10.5px;padding:3px 8px;border-radius:20px;border:1px solid var(--line);color:var(--ink-text-dim);}
.num{text-align:right;}
.empty-note{font-family:'IBM Plex Mono',monospace;font-size:11.5px;color:var(--ink-text-dim);padding:13px 14px;border-top:1px dashed var(--line);}

.et input, .et select{background:var(--ink-3); border:1px solid transparent; color:var(--ink-text); font-family:'IBM Plex Mono',monospace; font-size:12.5px; padding:6px 7px; border-radius:2px; width:100%;}
.et input:focus, .et select:focus{border-color:var(--brass); outline:none;}
.et select option{background:var(--ink-2); color:var(--ink-text);}
.et td{padding:7px 8px;}
.et .num input{text-align:right;}
.et .readonly{color:var(--ink-text-dim); padding:6px 4px; text-align:right;}
.et input[disabled]{opacity:.35;}

.chips{display:flex;flex-wrap:wrap;gap:8px;}
.chip{display:flex;align-items:center;gap:8px;background:var(--ink-2);border:1px solid var(--line);border-radius:20px;padding:6px 8px 6px 14px;font-family:'IBM Plex Mono',monospace;font-size:12.5px;}
.chip button{background:transparent;border:none;color:var(--ink-text-dim);cursor:pointer;font-size:13px;padding:2px 4px;}
.chip button:hover{color:var(--burgundy);}
.addchip{display:flex;gap:8px;align-items:center;}
.addchip input{background:var(--ink-2);border:1px solid var(--line);color:var(--ink-text);font-family:'IBM Plex Mono',monospace;font-size:12.5px;padding:8px 10px;border-radius:2px;}

.pending{border:1px solid var(--brass); background:rgba(198,162,77,.08); margin-bottom:12px; border-radius:2px; padding:14px 16px;}
.pending-head{font-size:13.5px; margin-bottom:12px;}
.pending-head b{font-family:'Fraunces',serif;font-weight:600; font-size:15px;}
.pending-head span{display:block; font-family:'IBM Plex Mono',monospace; font-size:11px; color:var(--ink-text-dim); margin-top:2px;}
.pending-controls{display:flex; gap:14px; align-items:flex-end; flex-wrap:wrap;}
.pending-controls label{display:flex; flex-direction:column; gap:5px; font-family:'IBM Plex Mono',monospace; font-size:10.5px; color:var(--ink-text-dim); text-transform:uppercase; letter-spacing:.05em;}
.pending-controls input, .pending-controls select{background:var(--ink-2); border:1px solid var(--line); color:var(--ink-text); font-family:'IBM Plex Mono',monospace; font-size:12.5px; padding:7px 9px; border-radius:2px; width:120px;}
.pending-controls input[readonly]{color:var(--ink-text-dim);}
.fxnote{font-family:'IBM Plex Mono',monospace; font-size:10.5px; color:var(--ink-text-dim); margin-top:4px;}

.newsec{display:none; border:1px dashed #C9C0A2; padding:14px; margin-top:-4px; margin-bottom:16px; border-radius:2px; background:#FCFAF3;}
.newsec.open{display:block;}
.newsec .field-row{grid-template-columns:1fr 1fr;}

.overlay{position:fixed;inset:0;background:rgba(10,12,16,.7);display:none;align-items:center;justify-content:center;z-index:50;padding:20px;}
.overlay.open{display:flex;}
.modal{background:var(--paper);color:var(--ink);width:100%;max-width:500px;padding:32px;border-radius:2px;max-height:88vh;overflow-y:auto;}
.modal h3{font-family:'Fraunces',serif;font-size:22px;margin:0 0 22px;font-weight:600;}
.field{margin-bottom:16px;}
.field label{display:block;font-family:'IBM Plex Mono',monospace;font-size:11px;text-transform:uppercase;letter-spacing:.06em;margin-bottom:6px;color:#6B6653;}
.field select,.field input{width:100%;padding:10px 12px;border:1px solid #C9C0A2;background:#FCFAF3;font-family:'Inter',sans-serif;font-size:14px;border-radius:2px;}
.field-row{display:grid;grid-template-columns:1fr 1fr;gap:12px;}
.modal-actions{display:flex;gap:10px;margin-top:22px;}
.modal-actions .btn.ghost{color:var(--ink);border-color:#C9C0A2;}
.hint{font-family:'IBM Plex Mono',monospace;font-size:11px;color:#8A8368;margin-top:-10px;margin-bottom:14px;}

.storage-banner{margin:20px 32px 0;padding:12px 16px;border:1px solid var(--brass);background:rgba(198,162,77,.08);font-family:'IBM Plex Mono',monospace;font-size:11.5px;color:var(--ink-text-dim);border-radius:2px;display:none;}
.storage-banner.show{display:block;}

footer{padding:36px 32px 0;font-family:'IBM Plex Mono',monospace;font-size:11.5px;color:var(--ink-text-dim);line-height:1.6;}
@media (max-width:760px){
  header{padding:20px 20px 20px;} section{padding:32px 20px 0;} h1{font-size:28px;}
  .bar-row{grid-template-columns:90px 1fr 120px;} .kpis{margin:14px 20px 0;} .group-toggle{margin:24px 20px 0;}
  .grouptabs{padding:16px 20px 0;} .storage-banner{margin:20px 20px 0;}
  .pending-controls{gap:10px;} .pending-controls label{width:100%;} .pending-controls input, .pending-controls select{width:100%;}
}
</style>
</head>
<body>
<div class="app">

  <div class="ticker-wrap"><div class="ticker-track" id="tickerTrack"></div></div>

  <div id="storageBanner" class="storage-banner"></div>

  <div class="grouptabs" id="grouptabs"></div>

  <header>
    <div>
      <p class="eyebrow" id="groupEyebrow">Patrimonio</p>
      <h1>Seguimiento de inversiones</h1>
      <p class="meta">
        <span id="lastUpdate">Cotizaciones sin actualizar todavía</span>
        <button class="btn ghost small" id="refreshBtn">↻ Actualizar cotizaciones y cambio €/$</button>
      </p>
    </div>
    <div class="header-actions">
      <button class="btn ghost" id="downloadBackup">⬇ Copia de seguridad</button>
      <label class="btn ghost" for="uploadBackup" style="cursor:pointer;">⬆ Cargar copia</label>
      <input type="file" id="uploadBackup" accept="application/json" style="display:none">
      <button class="btn" id="openModal">+ Nuevo movimiento</button>
    </div>
  </header>

  <div class="group-toggle" id="groupToggle"></div>
  <div class="kpis" id="kpis"></div>

  <section>
    <div class="section-head">
      <div class="section-title">Distribución del patrimonio</div>
      <div class="toggle" id="breakdownToggle">
        <button data-mode="titular" class="active">Por titular</button>
        <button data-mode="banco">Por banco</button>
      </div>
    </div>
    <div class="legend"><span class="dot inv"></span>Invertido <span class="dot cash"></span>Efectivo</div>
    <div class="breakdown" id="breakdown"></div>
  </section>

  <section>
    <div class="section-head">
      <div>
        <div class="section-title">Evolución del patrimonio</div>
        <div class="section-sub">Valor de las posiciones al cierre de cada año, con la cotización de cierre real (tabla de abajo) cuando la tienes cargada; si no, la última operación conocida como aproximación. El año en curso usa la cotización en vivo.</div>
      </div>
    </div>
    <div class="breakdown" id="evoChart"></div>
  </section>

  <section>
    <div class="section-head">
      <div>
        <div class="section-title">Cotizaciones de cierre anual</div>
        <div class="section-sub">Precio de cierre a 31 de diciembre de cada año, en la divisa nativa de cada valor.</div>
      </div>
    </div>
    <div class="table-wrap" id="yearCloseWrap"></div>
  </section>

  <section>
    <div class="section-head">
      <div>
        <div class="section-title">Efectivo y liquidez</div>
        <div class="section-sub">Saldo disponible por cuenta, para calcular qué % de tu patrimonio está invertido frente a en liquidez.</div>
      </div>
    </div>
    <div class="table-wrap">
      <table>
        <thead><tr class="et"><th>Titular</th><th>Banco</th><th class="num">Saldo efectivo</th><th></th></tr></thead>
        <tbody class="et" id="cashBody"></tbody>
      </table>
      <div class="empty-note"><button class="btn small ghost" id="addCashBtn">+ Añadir cuenta</button></div>
    </div>
  </section>

  <section id="pendingSection">
    <div class="section-head">
      <div>
        <div class="section-title">Dividendos por revisar</div>
        <div class="section-sub">Calculados según la frecuencia de pago de cada valor — revisa el importe y la fecha y confirma antes de que se añadan.</div>
      </div>
    </div>
    <div id="pendingWrap"></div>
  </section>

  <section>
    <div class="section-head">
      <div>
        <div class="section-title">Posiciones vivas</div>
        <div class="section-sub" id="posCount"></div>
      </div>
      <select class="filter" id="filterTitular"></select>
    </div>
    <div class="table-wrap">
      <table>
        <thead><tr>
          <th>Valor</th><th>Titular</th><th>Banco</th>
          <th class="num">Títulos</th><th class="num">Cotización</th>
          <th class="num">Valoración €</th><th class="num">% cartera</th>
          <th class="num">Dividendos</th><th class="num">Resultado</th><th class="num">Rentab.</th>
          <th class="num">Potencial</th>
        </tr></thead>
        <tbody id="posBody"></tbody>
      </table>
      <div class="empty-note">Ordenadas de mayor a menor valoración · valores en $ convertidos a € al cambio actual.</div>
    </div>
  </section>

  <section>
    <div class="section-head">
      <div>
        <div class="section-title">Maestro de valores</div>
        <div class="section-sub">Ticker, divisa, dividendo y precio objetivo de cada valor.</div>
      </div>
    </div>
    <div class="table-wrap">
      <table>
        <thead><tr class="et">
          <th>Nombre</th><th>Ticker</th><th>Divisa</th><th>Mercado</th><th>Vehículo</th><th>Sector</th>
          <th class="num">Cotización</th><th class="num">€/título</th><th>Frecuencia</th><th class="num">Objetivo</th><th></th>
        </tr></thead>
        <tbody class="et" id="secBody"></tbody>
      </table>
      <div class="empty-note"><button class="btn small ghost" id="addSecBtn">+ Añadir valor</button></div>
    </div>
  </section>

  <section>
    <div class="section-head">
      <div>
        <div class="section-title">Titulares y bancos de este grupo</div>
        <div class="section-sub">El "subgrupo" es opcional — sirve para desglosar los KPIs (p.ej. "Nosotros" / "Niños"). Déjalo vacío si no lo necesitas.</div>
      </div>
    </div>
    <div class="table-wrap">
      <table class="narrow">
        <thead><tr class="et"><th>Titular</th><th>Subgrupo (para KPIs)</th><th></th></tr></thead>
        <tbody class="et" id="titularesBody"></tbody>
      </table>
      <div class="empty-note"><button class="btn small ghost" id="addTitularBtn">+ Añadir titular</button></div>
    </div>
    <div style="height:16px;"></div>
    <div class="chips" id="bancosChips"></div>
    <div class="addchip" style="margin-top:12px;">
      <input id="newBancoInput" placeholder="Nombre del banco">
      <button class="btn small ghost" id="addBancoBtn">+ Añadir banco</button>
    </div>
  </section>

  <section>
    <div class="section-head">
      <div>
        <div class="section-title">Movimientos registrados</div>
        <div class="section-sub">Editable directamente — corrige cualquier error aquí mismo.</div>
      </div>
      <button class="btn ghost small" id="toggleRawBtn">Ocultar</button>
    </div>
    <div id="rawContainer">
      <div class="table-wrap">
        <table>
          <thead><tr class="et">
            <th>Fecha</th><th>Titular</th><th>Banco</th><th>Valor</th><th>Operación</th>
            <th class="num">Títulos</th><th class="num">Precio</th><th class="num">Importe</th><th></th>
          </tr></thead>
          <tbody class="et" id="rawBody"></tbody>
        </table>
        <div class="empty-note"><button class="btn small ghost" id="addRowBtn">+ Añadir fila</button></div>
      </div>
    </div>
  </section>

  <footer>
    Los datos se guardan en el navegador (localStorage) de este dispositivo — no viajan a ningún servidor. Haz copia de seguridad (botón de arriba) de vez en cuando: si borras datos de navegación o cambias de navegador, se pierde lo que no esté respaldado en un archivo.
  </footer>
</div>

<div class="overlay" id="overlay">
  <div class="modal">
    <h3>Nuevo movimiento</h3>
    <div class="field-row">
      <div class="field"><label>Titular</label><select id="f_titular"></select></div>
      <div class="field"><label>Banco</label><select id="f_banco"></select></div>
    </div>
    <div class="field"><label>Valor</label><select id="f_valor"></select></div>
    <div class="hint">Elige de la lista para que el nombre quede igual siempre. Si no existe, créalo abajo.</div>
    <div class="newsec" id="newsec">
      <div class="field"><label>Nombre del valor</label><input id="ns_nombre" placeholder="Ej. Iberdrola"></div>
      <div class="field-row">
        <div class="field"><label>Ticker / código</label><input id="ns_ticker" placeholder="Ej. IBE"></div>
        <div class="field"><label>Divisa</label><select id="ns_moneda"><option value="EUR">EUR (€)</option><option value="USD">USD ($)</option></select></div>
      </div>
      <div class="field-row">
        <div class="field"><label>Mercado</label><select id="ns_mercado"><option>Europa</option><option>EEUU</option><option>Otro</option></select></div>
        <div class="field"><label>Vehículo</label>
          <select id="ns_vehiculo"><option>Acciones €</option><option>Acciones $</option><option>Fondos R. Fija</option><option>Fondos R. Variable</option></select>
        </div>
      </div>
      <div class="field-row">
        <div class="field"><label>Sector</label><input id="ns_sector" placeholder="Ej. Energía"></div>
        <div class="field"><label>Precio objetivo</label><input id="ns_objetivo" type="number" step="any" placeholder="0"></div>
      </div>
      <div class="field-row">
        <div class="field"><label>Dividendo / título / año (0 si no reparte)</label><input id="ns_div" type="number" step="any" placeholder="0.35"></div>
        <div class="field"><label>Frecuencia de pago</label>
          <select id="ns_freq"><option value="0">Irregular / no reparte</option><option value="1">Anual</option><option value="2">Semestral</option><option value="4">Trimestral</option></select>
        </div>
      </div>
    </div>
    <div class="field-row">
      <div class="field"><label>Operación</label>
        <select id="f_operacion"><option>Comp-Vent</option><option>Dividendos</option></select>
      </div>
      <div class="field"><label>Fecha</label><input id="f_fecha" type="date"></div>
    </div>
    <div class="field-row">
      <div class="field"><label>Títulos (negativo si vendes)</label><input id="f_titulos" type="number" step="any" placeholder="100"></div>
      <div class="field"><label>Precio (en divisa nativa del valor)</label><input id="f_precio" type="number" step="any" placeholder="14.80"></div>
    </div>
    <div class="modal-actions">
      <button class="btn ghost" id="cancelModal">Cancelar</button>
      <button class="btn" id="saveModal">Guardar movimiento</button>
    </div>
  </div>
</div>

<script>
const eur = n => (n<0?'-':'') + '€' + Math.abs(n).toLocaleString('es-ES',{minimumFractionDigits:0,maximumFractionDigits:0});
const pct = n => (isFinite(n) ? (n*100).toFixed(1).replace('.',',') + '%' : 'n/d');
const FREQ_LABEL = {0:'Irregular',1:'Anual',2:'Semestral',4:'Trimestral'};
const STORAGE_KEY = 'patrimonio_app_v1';

// ---- Datos por defecto (grupo 1 = ejemplo ilustrativo) ----
function defaultData(){
  return {
    eurUsd: 1.08,
    lastUpdateTs: null,
    activeGrupo: 'grupo1',
    grupos: {
      grupo1: {
        nombre: 'Familia',
        titulares: [
          {nombre:'Vero&Quique', sub:'Nosotros'}, {nombre:'Quique', sub:'Nosotros'},
          {nombre:'Pablo', sub:'Niños'}, {nombre:'Carolina', sub:'Niños'}, {nombre:'Pablo&Carol&Álvaro', sub:'Niños'}
        ],
        bancos: ['CaixaBank','Santander','Bankinter','Renta4','Adbank'],
        securities: [
          {nombre:'Telefónica', ticker:'TEF', moneda:'EUR', mercado:'Europa', vehiculo:'Acciones €', sector:'Telecomunicaciones', quote:3.9245, baseline:3.9245, div:0.30, freq:2, objetivo:4.50},
          {nombre:'Enagás', ticker:'ENG', moneda:'EUR', mercado:'Europa', vehiculo:'Acciones €', sector:'Energía', quote:20.04, baseline:20.04, div:1.74, freq:2, objetivo:22.00},
          {nombre:'IAG', ticker:'IAG', moneda:'EUR', mercado:'Europa', vehiculo:'Acciones €', sector:'Turismo', quote:1.953, baseline:1.953, div:0.09, freq:1, objetivo:2.30},
          {nombre:'Deutsche Post', ticker:'DHL', moneda:'EUR', mercado:'Europa', vehiculo:'Acciones €', sector:'Logística', quote:48.14, baseline:48.14, div:1.85, freq:1, objetivo:52.00},
          {nombre:'Verizon', ticker:'VZ', moneda:'USD', mercado:'EEUU', vehiculo:'Acciones $', sector:'Telecomunicaciones', quote:46.38, baseline:46.38, div:2.71, freq:4, objetivo:48.00},
          {nombre:'PayPal', ticker:'PYPL', moneda:'USD', mercado:'EEUU', vehiculo:'Acciones $', sector:'Tecnología', quote:50.48, baseline:50.48, div:0, freq:0, objetivo:65.00},
          {nombre:'Volkswagen', ticker:'VOW3', moneda:'EUR', mercado:'Europa', vehiculo:'Acciones €', sector:'Automoción', quote:87.36, baseline:87.36, div:4.50, freq:1, objetivo:95.00},
          {nombre:'TotalEnergies', ticker:'TTE', moneda:'EUR', mercado:'Europa', vehiculo:'Acciones €', sector:'Petróleo y Gas', quote:77.0, baseline:77.0, div:3.20, freq:4, objetivo:82.00},
        ],
        moves: [
          {titular:'Vero&Quique', banco:'CaixaBank', valor:'Telefónica', operacion:'Comp-Vent', fecha:'2015-03-10', titulos:2000, precio:3.95},
          {titular:'Vero&Quique', banco:'Bankinter', valor:'Enagás', operacion:'Comp-Vent', fecha:'2016-06-02', titulos:1020, precio:15.10},
          {titular:'Vero&Quique', banco:'Renta4', valor:'IAG', operacion:'Comp-Vent', fecha:'2018-01-15', titulos:900, precio:6.20},
          {titular:'Quique', banco:'Santander', valor:'Deutsche Post', operacion:'Comp-Vent', fecha:'2014-05-20', titulos:410, precio:34.50},
          {titular:'Pablo', banco:'Bankinter', valor:'Verizon', operacion:'Comp-Vent', fecha:'2019-09-12', titulos:340, precio:36.10},
          {titular:'Pablo&Carol&Álvaro', banco:'Renta4', valor:'PayPal', operacion:'Comp-Vent', fecha:'2021-02-01', titulos:100, precio:41.93},
          {titular:'Carolina', banco:'CaixaBank', valor:'Volkswagen', operacion:'Comp-Vent', fecha:'2017-04-18', titulos:315, precio:61.00},
          {titular:'Vero&Quique', banco:'Santander', valor:'TotalEnergies', operacion:'Comp-Vent', fecha:'2020-11-03', titulos:320, precio:33.80},
          {titular:'Vero&Quique', banco:'CaixaBank', valor:'Telefónica', operacion:'Dividendos', fecha:'2024-06-01', titulos:0, precio:0, importe:640},
          {titular:'Pablo', banco:'Bankinter', valor:'Verizon', operacion:'Dividendos', fecha:'2025-08-01', titulos:0, precio:0, importe:69},
        ],
        cashBalances: [
          {titular:'Vero&Quique', banco:'CaixaBank', saldo:8500},
          {titular:'Pablo', banco:'Bankinter', saldo:1200},
        ],
        yearEndClose: {'Telefónica': {2015:5.7085,2016:5.1510,2017:5.6622,2018:5.1867,2019:4.5227,2020:2.8836,2021:3.4203,2022:3.1700,2023:3.7568,2024:4.6300}},
        dismissed: [],
        rawVisible: true,
      },
      grupo2: { nombre:'Grupo 2', titulares:[], bancos:['CaixaBank','Santander','Bankinter','Renta4'], securities:[], moves:[], cashBalances:[], yearEndClose:{}, dismissed:[], rawVisible:true },
      grupo3: { nombre:'Grupo 3', titulares:[], bancos:['CaixaBank','Santander','Bankinter','Renta4'], securities:[], moves:[], cashBalances:[], yearEndClose:{}, dismissed:[], rawVisible:true },
    }
  };
}

let DB = null;
let storageOk = true;
let mode = 'titular';
let filterTit = 'Todos';
let kpiGroup = 'Total';

function G(){ return DB.grupos[DB.activeGrupo]; }
const EURUSD_BASELINE = 1.08;

function loadAll(){
  try{
    const raw = localStorage.getItem(STORAGE_KEY);
    if(raw){ DB = JSON.parse(raw); return; }
  }catch(e){ storageOk = false; }
  DB = defaultData();
}
function saveAll(){
  try{ localStorage.setItem(STORAGE_KEY, JSON.stringify(DB)); }
  catch(e){ storageOk = false; showStorageBanner(); }
}
function showStorageBanner(){
  const b = document.getElementById('storageBanner');
  b.textContent = '⚠ El guardado automático no está disponible en este entorno (vista previa aislada). Los cambios no persistirán hasta que abras este archivo fuera de aquí (localmente o en GitHub Pages). Usa "Copia de seguridad" para no perder lo que edites ahora.';
  b.classList.add('show');
}

function sec(nombre){ return G().securities.find(s=>s.nombre===nombre); }
function toEurAmt(amount, moneda){ return moneda==='USD' ? amount/DB.eurUsd : amount; }
function quoteEur(nombre){ const s = sec(nombre); if(!s) return 0; return toEurAmt(s.quote, s.moneda); }
function groupOf(titularNombre){ const t = G().titulares.find(t=>t.nombre===titularNombre); return (t && t.sub) ? t.sub : 'Total'; }
function subgrupos(){ return [...new Set(G().titulares.map(t=>t.sub).filter(Boolean))]; }

function positions(filterFn){
  const map = {};
  G().moves.filter(filterFn || (()=>true)).forEach(m=>{
    const s = sec(m.valor); const moneda = s ? s.moneda : 'EUR';
    const key = m.titular+'|'+m.banco+'|'+m.valor;
    if(!map[key]) map[key] = {titular:m.titular, banco:m.banco, valor:m.valor, titulos:0, coste:0, dividendos:0};
    const p = map[key];
    if(m.operacion === 'Comp-Vent'){
      const titulos = +m.titulos||0, precio = +m.precio||0;
      p.titulos += titulos;
      p.coste += toEurAmt(titulos*precio, moneda);
    } else if(m.operacion === 'Dividendos'){
      p.dividendos += toEurAmt((+m.importe)||0, moneda);
    }
  });
  return Object.values(map).filter(p => Math.abs(p.titulos) > 0.001);
}

function xirr(cashflows){
  if(cashflows.length<2) return NaN;
  const sorted = [...cashflows].sort((a,b)=>a.date-b.date);
  const d0 = sorted[0].date;
  const yrs = cf => (cf.date-d0)/(365*86400000);
  const npv = r => sorted.reduce((s,cf)=> s + cf.amount/Math.pow(1+r, yrs(cf)), 0);
  const dnpv = r => sorted.reduce((s,cf)=> s - yrs(cf)*cf.amount/Math.pow(1+r, yrs(cf)+1), 0);
  let r = 0.1;
  for(let i=0;i<60;i++){
    const f = npv(r), df = dnpv(r);
    if(Math.abs(df)<1e-9) break;
    const nr = r - f/df;
    if(!isFinite(nr)) return NaN;
    if(Math.abs(nr-r) < 1e-7){ r = nr; break; }
    r = nr;
  }
  return (r > -0.99 && r < 50) ? r : NaN;
}
function groupXirr(pos, filterFn){
  const cfs = G().moves.filter(filterFn || (()=>true)).filter(m=>m.fecha).map(m=>{
    const s = sec(m.valor); const moneda = s ? s.moneda : 'EUR';
    const date = new Date(m.fecha);
    let amount = 0;
    if(m.operacion === 'Comp-Vent') amount = -toEurAmt((+m.titulos||0)*(+m.precio||0), moneda);
    else if(m.operacion === 'Dividendos') amount = toEurAmt((+m.importe||0), moneda);
    return {date, amount};
  });
  let valoracion = 0;
  pos.forEach(p=>{ const q = quoteEur(p.valor) || (p.coste/p.titulos); valoracion += p.titulos*q; });
  cfs.push({date:new Date(), amount: valoracion});
  return xirr(cfs);
}

// ---- Render principal ----
function render(){
  renderGroupTabs();
  document.getElementById('groupEyebrow').textContent = 'Patrimonio · ' + G().nombre;
  renderTicker();
  renderKpiToggle();
  renderKpis();
  renderBreakdown(positions());
  renderEvolution();
  renderYearClose();
  renderCash();
  renderPending();
  renderFilterOptions(positions());
  renderTable(positions());
  renderSecurities();
  renderTitularesBancos();
  renderRaw();
  document.getElementById('lastUpdate').textContent = DB.lastUpdateTs
    ? 'Actualizado: ' + new Date(DB.lastUpdateTs).toLocaleString('es-ES',{day:'2-digit',month:'2-digit',hour:'2-digit',minute:'2-digit'})
    : 'Cotizaciones sin actualizar todavía';
}

// ---- Grupos ----
function renderGroupTabs(){
  const wrap = document.getElementById('grouptabs');
  const tabs = Object.keys(DB.grupos).map(gid=>{
    const g = DB.grupos[gid];
    const active = gid===DB.activeGrupo;
    return `<button class="gtab ${active?'active':''}" data-gid="${gid}">${g.nombre}${active?' ✎':''}</button>`;
  }).join('');
  wrap.innerHTML = tabs + '<button class="gtab gtab-add" id="addGrupoBtn">+ Añadir grupo</button>';
  wrap.querySelectorAll('.gtab[data-gid]').forEach(btn=>{
    btn.onclick = ()=>{
      const gid = btn.dataset.gid;
      if(gid === DB.activeGrupo){
        const nuevo = prompt('Nombre del grupo:', DB.grupos[gid].nombre);
        if(nuevo && nuevo.trim()){ DB.grupos[gid].nombre = nuevo.trim(); saveAll(); }
      } else {
        DB.activeGrupo = gid; filterTit='Todos'; kpiGroup='Total'; mode='titular';
        saveAll();
      }
      render();
    };
  });
  document.getElementById('addGrupoBtn').onclick = ()=>{
    const nombre = prompt('Nombre del nuevo grupo de inversión:');
    if(!nombre || !nombre.trim()) return;
    const gid = 'grupo_' + Date.now();
    DB.grupos[gid] = {nombre:nombre.trim(), titulares:[], bancos:['CaixaBank','Santander','Bankinter','Renta4'], securities:[], moves:[], cashBalances:[], yearEndClose:{}, dismissed:[], rawVisible:true};
    DB.activeGrupo = gid;
    saveAll(); render();
  };
}

function renderTicker(){
  const items = G().securities.map(s=>{
    const sym = s.moneda==='USD' ? '$' : '€';
    const diff = ((s.quote-s.baseline)/s.baseline*100);
    const cls = diff>=0?'up':'down', arrow = diff>=0?'▲':'▼';
    return `<div class="tick"><span class="sym">${s.nombre} <small>${s.ticker}</small></span><span>${sym}${s.quote.toFixed(2)}</span><span class="${cls}">${arrow} ${Math.abs(diff).toFixed(2)}%</span><span class="dot"></span></div>`;
  });
  const fxDiff = ((DB.eurUsd-EURUSD_BASELINE)/EURUSD_BASELINE*100);
  const fxCls = fxDiff>=0?'up':'down', fxArrow = fxDiff>=0?'▲':'▼';
  items.push(`<div class="tick fx"><span class="sym">EUR/USD</span><span>${DB.eurUsd.toFixed(4)}</span><span class="${fxCls}">${fxArrow} ${Math.abs(fxDiff).toFixed(2)}%</span><span class="dot"></span></div>`);
  const html = items.join('') || '<div class="tick"><span class="sym">Sin valores todavía</span></div>';
  document.getElementById('tickerTrack').innerHTML = html+html;
}

function renderKpiToggle(){
  const subs = subgrupos();
  const el = document.getElementById('groupToggle');
  if(!subs.length){ el.innerHTML = ''; kpiGroup='Total'; return; }
  if(!['Total',...subs].includes(kpiGroup)) kpiGroup = 'Total';
  el.innerHTML = ['Total', ...subs].map(s=>`<button data-g="${s}" class="${s===kpiGroup?'active':''}">${s}</button>`).join('');
  el.querySelectorAll('button').forEach(btn=>{
    btn.onclick = ()=>{ kpiGroup = btn.dataset.g; renderKpiToggle(); renderKpis(); };
  });
}

function renderKpis(){
  const filterFn = kpiGroup==='Total' ? (()=>true) : (m => groupOf(m.titular)===kpiGroup);
  const pos = positions(filterFn);
  let valoracion=0, coste=0, dividendos=0;
  pos.forEach(p=>{ const q = quoteEur(p.valor) || (p.coste/p.titulos); valoracion += p.titulos*q; coste += p.coste; dividendos += p.dividendos; });
  const resultado = valoracion - coste + dividendos;
  const rentSimple = coste ? resultado/coste : 0;
  const tir = groupXirr(pos, filterFn);
  const efectivo = G().cashBalances.filter(c => kpiGroup==='Total' || groupOf(c.titular)===kpiGroup)
    .reduce((s,c)=> s+(+c.saldo||0), 0);
  const pctInvertido = (valoracion+efectivo) ? valoracion/(valoracion+efectivo) : NaN;
  let potencialEur = 0;
  pos.forEach(p=>{
    const s = sec(p.valor);
    if(s && s.objetivo>0){ potencialEur += toEurAmt(p.titulos*(s.objetivo - s.quote), s.moneda); }
  });
  document.getElementById('kpis').innerHTML = `
    <div class="kpi"><div class="label">Patrimonio${kpiGroup!=='Total'?' · '+kpiGroup:''}</div><div class="value">${eur(valoracion)}</div><div class="sub">${pos.length} posiciones</div></div>
    <div class="kpi"><div class="label">Resultado</div><div class="value ${resultado>=0?'pos':'neg'}">${eur(resultado)}</div><div class="sub">incl. dividendos</div></div>
    <div class="kpi"><div class="label">Rentabilidad simple</div><div class="value ${rentSimple>=0?'pos':'neg'}">${pct(rentSimple)}</div><div class="sub">sobre coste invertido</div></div>
    <div class="kpi"><div class="label">TIR anualizada</div><div class="value ${tir>=0?'pos':'neg'}">${pct(tir)}</div><div class="sub">XIRR sobre flujos reales</div></div>
    <div class="kpi"><div class="label">Dividendos cobrados</div><div class="value">${eur(dividendos)}</div><div class="sub">histórico, en efectivo</div></div>
    <div class="kpi"><div class="label">% invertido</div><div class="value">${pct(pctInvertido)}</div><div class="sub">${eur(efectivo)} en efectivo</div></div>
    <div class="kpi"><div class="label">Potencial</div><div class="value ${potencialEur>=0?'pos':'neg'}">${eur(potencialEur)}</div><div class="sub">hasta precio objetivo</div></div>
  `;
}

function renderBreakdown(pos){
  const key = mode === 'titular' ? 'titular' : 'banco';
  const investedAgg = {};
  pos.forEach(p=>{ const q = quoteEur(p.valor) || (p.coste/p.titulos); const val = p.titulos*q; investedAgg[p[key]] = (investedAgg[p[key]]||0)+val; });
  const cashAgg = {};
  G().cashBalances.forEach(c=>{ cashAgg[c[key]] = (cashAgg[c[key]]||0) + (+c.saldo||0); });
  const names = new Set([...Object.keys(investedAgg), ...Object.keys(cashAgg)]);
  const data = [...names].map(name=>{
    const inv = investedAgg[name]||0, cash = cashAgg[name]||0;
    return {name, inv, cash, total: inv+cash};
  }).sort((a,b)=>b.total-a.total);
  const max = Math.max(...data.map(d=>d.total), 1);
  const rows = data.map(d=>`
    <div class="bar-row"><div class="bar-name">${d.name}</div>
      <div class="bar-track">
        <div class="bar-fill inv" style="width:${(d.inv/max*100).toFixed(1)}%"></div>
        <div class="bar-fill cash" style="width:${(d.cash/max*100).toFixed(1)}%"></div>
      </div>
      <div class="bar-val"><b>${eur(d.total)}</b> · ${pct(d.total?d.cash/d.total:0)} efvo.</div>
    </div>`).join('');
  document.getElementById('breakdown').innerHTML = rows || '<div class="empty-note">Sin datos todavía.</div>';
}

function periodEnds(){
  const allDates = G().moves.filter(m=>m.fecha).map(m=>new Date(m.fecha));
  if(!allDates.length) return [];
  const minDate = new Date(Math.min(...allDates));
  const today = new Date();
  const ends = [];
  for(let y=minDate.getFullYear(); y<=today.getFullYear(); y++){
    const isCurrent = y===today.getFullYear();
    ends.push({label:String(y), date: isCurrent ? today : new Date(y,11,31), isCurrent, year:y});
  }
  return ends;
}
function portfolioValueAtDate(dateEnd, isCurrent, year){
  const held = {};
  G().moves.filter(m=>m.operacion==='Comp-Vent' && new Date(m.fecha) <= dateEnd).forEach(m=>{
    const key = m.titular+'|'+m.banco+'|'+m.valor;
    held[key] = (held[key]||0) + (+m.titulos||0);
  });
  const lastPrice = {};
  if(!isCurrent){
    G().moves.filter(m=>m.operacion==='Comp-Vent' && new Date(m.fecha)<=dateEnd && +m.precio>0)
      .sort((a,b)=> new Date(a.fecha)-new Date(b.fecha))
      .forEach(m=>{ lastPrice[m.valor] = +m.precio; });
  }
  let total = 0;
  Object.entries(held).forEach(([key,titulos])=>{
    if(Math.abs(titulos)<0.001) return;
    const valor = key.split('|')[2];
    const s = sec(valor);
    if(!s) return;
    let priceNative;
    if(isCurrent){ priceNative = s.quote; }
    else {
      const yc = G().yearEndClose[valor] && G().yearEndClose[valor][year];
      priceNative = (yc!=null && yc!=='') ? parseFloat(yc) : (lastPrice[valor] ?? s.quote);
    }
    total += titulos * toEurAmt(priceNative, s.moneda);
  });
  return total;
}
function renderEvolution(){
  const ends = periodEnds();
  const series = ends.map(e=> ({period:e.label, value: portfolioValueAtDate(e.date, e.isCurrent, e.year)})).reverse();
  const max = Math.max(...series.map(s=>s.value), 1);
  const rows = series.map(s=>`
    <div class="bar-row evo"><div class="bar-name">${s.period}</div>
      <div class="bar-track"><div class="bar-fill inv" style="width:${Math.max(0,(s.value/max*100)).toFixed(1)}%"></div></div>
      <div class="bar-val"><b>${eur(s.value)}</b></div>
    </div>`).join('');
  document.getElementById('evoChart').innerHTML = rows || '<div class="empty-note">Sin movimientos todavía.</div>';
}
function renderYearClose(){
  const ends = periodEnds().filter(e=>!e.isCurrent);
  const years = ends.map(e=>e.year);
  const wrap = document.getElementById('yearCloseWrap');
  if(!years.length || !G().securities.length){ wrap.innerHTML = '<div class="empty-note">Sin años cerrados todavía.</div>'; return; }
  const head = `<tr><th>Valor</th>${years.map(y=>`<th class="num">${y}</th>`).join('')}</tr>`;
  const body = G().securities.map(s=>{
    const cells = years.map(y=>{
      const v = (G().yearEndClose[s.nombre] && G().yearEndClose[s.nombre][y] != null) ? G().yearEndClose[s.nombre][y] : '';
      return `<td class="num"><input type="number" step="any" value="${v}" data-valor="${s.nombre}" data-year="${y}" placeholder="—"></td>`;
    }).join('');
    return `<tr><td class="name">${s.nombre} <span class="tag">${s.moneda}</span></td>${cells}</tr>`;
  }).join('');
  wrap.innerHTML = `<table class="et"><thead>${head}</thead><tbody>${body}</tbody></table>`;
  wrap.querySelectorAll('input[data-valor]').forEach(input=>{
    input.addEventListener('change', ()=>{
      const valor = input.dataset.valor, year = input.dataset.year;
      if(!G().yearEndClose[valor]) G().yearEndClose[valor] = {};
      if(input.value === ''){ delete G().yearEndClose[valor][year]; }
      else { G().yearEndClose[valor][year] = parseFloat(input.value); }
      saveAll(); renderEvolution();
    });
  });
}

function renderCash(){
  document.getElementById('cashBody').innerHTML = G().cashBalances.map((c,i)=>`
    <tr data-i="${i}">
      <td><select data-f="titular">${G().titulares.map(t=>`<option ${t.nombre===c.titular?'selected':''}>${t.nombre}</option>`).join('')}</select></td>
      <td><select data-f="banco">${G().bancos.map(b=>`<option ${b===c.banco?'selected':''}>${b}</option>`).join('')}</select></td>
      <td class="num"><input type="number" step="any" data-f="saldo" value="${c.saldo||0}"></td>
      <td><button class="btn tiny danger" data-action="del">✕</button></td>
    </tr>`).join('') || '<tr><td colspan="4" class="empty-note">Sin cuentas de efectivo todavía.</td></tr>';
  document.querySelectorAll('#cashBody tr').forEach(tr=>{
    const i = +tr.dataset.i;
    tr.querySelectorAll('[data-f]').forEach(input=>{
      input.addEventListener('change', ()=>{
        const f = input.dataset.f; let val = input.value;
        if(f==='saldo') val = parseFloat(val)||0;
        G().cashBalances[i][f] = val; saveAll(); render();
      });
    });
    const del = tr.querySelector('[data-action="del"]');
    if(del) del.onclick = ()=>{ G().cashBalances.splice(i,1); saveAll(); render(); };
  });
}
document.getElementById('addCashBtn').onclick = ()=>{
  if(!G().titulares.length || !G().bancos.length){ alert('Añade primero al menos un titular y un banco en "Titulares y bancos de este grupo".'); return; }
  G().cashBalances.push({titular:G().titulares[0].nombre, banco:G().bancos[0], saldo:0});
  saveAll(); render();
};

function renderFilterOptions(pos){
  const selEl = document.getElementById('filterTitular');
  const titulares = ['Todos', ...new Set(pos.map(p=>p.titular))];
  selEl.innerHTML = titulares.map(t=>`<option value="${t}" ${t===filterTit?'selected':''}>${t==='Todos'?'Todos los titulares':t}</option>`).join('');
}

function renderTable(pos){
  let total = 0;
  const withVal = pos.map(p=>{ const q = quoteEur(p.valor) || (p.coste/p.titulos); const val = p.titulos*q; total += val; return {...p,q,val}; });
  let filtered = filterTit==='Todos' ? withVal : withVal.filter(p=>p.titular===filterTit);
  filtered = filtered.sort((a,b)=> b.val - a.val);
  document.getElementById('posCount').textContent = `${filtered.length} de ${withVal.length} posiciones mostradas`;
  const rows = filtered.map(p=>{
    const resultado = p.val - p.coste + p.dividendos;
    const rent = p.coste ? resultado/p.coste : 0;
    const peso = total ? p.val/total : 0;
    const s = sec(p.valor);
    const potencial = (s && s.objetivo>0) ? (s.objetivo - s.quote)/s.quote : NaN;
    return `<tr><td class="name">${p.valor}</td><td>${p.titular}</td><td><span class="tag">${p.banco}</span></td>
      <td class="num">${p.titulos.toLocaleString('es-ES')}</td><td class="num">${(s?s.quote:p.q).toFixed(3)}${s&&s.moneda==='USD'?' $':''}</td>
      <td class="num">${eur(p.val)}</td><td class="num">${pct(peso)}</td>
      <td class="num">${eur(p.dividendos)}</td>
      <td class="num ${resultado>=0?'pos':'neg'}">${eur(resultado)}</td>
      <td class="num ${rent>=0?'pos':'neg'}">${pct(rent)}</td>
      <td class="num ${isFinite(potencial)?(potencial>=0?'pos':'neg'):''}">${pct(potencial)}</td></tr>`;
  }).join('');
  document.getElementById('posBody').innerHTML = rows || '<tr><td colspan="11" class="empty-note">Sin posiciones para este filtro.</td></tr>';
}

function pendingDividends(){
  const pos = positions();
  const out = [];
  pos.forEach(p=>{
    const s = sec(p.valor);
    if(!s || !s.freq || s.div<=0) return;
    const key = p.titular+'|'+p.banco+'|'+p.valor;
    if(G().dismissed.includes(key)) return;
    const divMoves = G().moves.filter(m=>m.titular===p.titular && m.banco===p.banco && m.valor===p.valor && m.operacion==='Dividendos');
    const buyMoves = G().moves.filter(m=>m.titular===p.titular && m.banco===p.banco && m.valor===p.valor && m.operacion==='Comp-Vent');
    const lastDate = divMoves.length ? new Date(Math.max(...divMoves.map(m=>new Date(m.fecha)))) : new Date(Math.min(...buyMoves.map(m=>new Date(m.fecha))));
    const periodDays = 365/s.freq;
    const next = new Date(lastDate.getTime() + periodDays*86400000);
    if(next <= new Date()){
      out.push({key, titular:p.titular, banco:p.banco, valor:p.valor, titulos:p.titulos,
        fecha: next.toISOString().slice(0,10), perShare: (s.div/s.freq).toFixed(4),
        cotizacion: s.quote, moneda: s.moneda, freqLabel: FREQ_LABEL[s.freq]});
    }
  });
  return out;
}
function renderPending(){
  const list = pendingDividends();
  const wrap = document.getElementById('pendingWrap');
  document.getElementById('pendingSection').style.display = list.length ? '' : 'none';
  wrap.innerHTML = list.map(p=>{
    const sym = p.moneda==='USD' ? '$' : '€';
    const total = (parseFloat(p.perShare)*p.titulos).toFixed(2);
    const nAcciones = p.cotizacion ? Math.round(total/p.cotizacion) : 0;
    const eurNote = p.moneda==='USD' ? `<div class="fxnote">≈ ${eur(toEurAmt(total, 'USD'))} al cambio actual</div>` : '';
    return `<div class="pending" data-key="${p.key}">
      <div class="pending-head"><b>${p.valor}</b><span>${p.titular} · ${p.banco} · ${p.titulos.toLocaleString('es-ES')} títulos · pago ${p.freqLabel.toLowerCase()}</span></div>
      <div class="pending-controls">
        <label>Fecha<input type="date" value="${p.fecha}" data-field="fecha"></label>
        <label>${sym} / título<input type="number" step="any" value="${p.perShare}" data-field="pershare"></label>
        <label>Total (${sym})<input type="number" step="any" value="${total}" data-field="total" readonly></label>
        <label>Cobro<select data-field="modo"><option value="efectivo">Efectivo</option><option value="acciones">En acciones</option></select></label>
        <label class="shares-field" data-shares style="display:none">Nº acciones<input type="number" step="any" value="${nAcciones}" data-field="nshares"></label>
        <button class="btn small" data-action="confirm">Confirmar</button>
        <button class="btn small ghost" data-action="dismiss">Descartar</button>
      </div>
      ${eurNote}
    </div>`;
  }).join('');

  wrap.querySelectorAll('.pending').forEach(card=>{
    const key = card.dataset.key;
    const info = list.find(p=>p.key===key);
    const titulos = info.titulos, cotiz = info.cotizacion;
    const perShareInput = card.querySelector('[data-field="pershare"]');
    const totalInput = card.querySelector('[data-field="total"]');
    const modoSelect = card.querySelector('[data-field="modo"]');
    const sharesField = card.querySelector('[data-shares]');
    const nsharesInput = card.querySelector('[data-field="nshares"]');

    perShareInput.addEventListener('input', ()=>{
      const total = (parseFloat(perShareInput.value)||0) * titulos;
      totalInput.value = total.toFixed(2);
      if(cotiz) nsharesInput.value = Math.round(total/cotiz);
    });
    modoSelect.addEventListener('change', ()=>{ sharesField.style.display = modoSelect.value==='acciones' ? '' : 'none'; });

    card.querySelector('[data-action="dismiss"]').onclick = ()=>{ G().dismissed.push(key); saveAll(); render(); };
    card.querySelector('[data-action="confirm"]').onclick = ()=>{
      const [titular, banco, valor] = key.split('|');
      const fecha = card.querySelector('[data-field="fecha"]').value;
      if(modoSelect.value === 'acciones'){
        G().moves.push({titular, banco, valor, operacion:'Comp-Vent', fecha, titulos: parseFloat(nsharesInput.value)||0, precio:0});
      } else {
        G().moves.push({titular, banco, valor, operacion:'Dividendos', fecha, titulos:0, precio:0, importe: parseFloat(totalInput.value)||0});
      }
      G().dismissed.push(key);
      saveAll(); render();
    };
  });
}

function valorOptions(selected){
  return G().securities.map(s=>`<option value="${s.nombre}" ${s.nombre===selected?'selected':''}>${s.nombre} (${s.ticker||'—'})</option>`).join('');
}
function renderSecurities(){
  document.getElementById('secBody').innerHTML = G().securities.map((s,i)=>`
    <tr data-i="${i}">
      <td><input data-f="nombre" value="${s.nombre}"></td>
      <td><input data-f="ticker" value="${s.ticker}"></td>
      <td><select data-f="moneda"><option value="EUR" ${s.moneda==='EUR'?'selected':''}>EUR</option><option value="USD" ${s.moneda==='USD'?'selected':''}>USD</option></select></td>
      <td><select data-f="mercado"><option ${s.mercado==='Europa'?'selected':''}>Europa</option><option ${s.mercado==='EEUU'?'selected':''}>EEUU</option><option ${s.mercado==='Otro'?'selected':''}>Otro</option></select></td>
      <td><select data-f="vehiculo">${['Acciones €','Acciones $','Fondos R. Fija','Fondos R. Variable'].map(v=>`<option ${v===s.vehiculo?'selected':''}>${v}</option>`).join('')}</select></td>
      <td><input data-f="sector" value="${s.sector}"></td>
      <td class="num readonly">${s.quote.toFixed(3)}</td>
      <td class="num"><input type="number" step="any" data-f="div" value="${s.div}"></td>
      <td><select data-f="freq">${Object.entries(FREQ_LABEL).map(([v,l])=>`<option value="${v}" ${+v===+s.freq?'selected':''}>${l}</option>`).join('')}</select></td>
      <td class="num"><input type="number" step="any" data-f="objetivo" value="${s.objetivo||0}"></td>
      <td><button class="btn tiny danger" data-action="del">✕</button></td>
    </tr>`).join('') || '<tr><td colspan="11" class="empty-note">Sin valores todavía en este grupo.</td></tr>';
  document.querySelectorAll('#secBody tr[data-i]').forEach(tr=>{
    const i = +tr.dataset.i;
    tr.querySelectorAll('[data-f]').forEach(input=>{
      input.addEventListener('change', ()=>{
        const f = input.dataset.f; let val = input.value;
        if(['div','objetivo'].includes(f)) val = parseFloat(val)||0;
        if(f==='freq') val = parseInt(val)||0;
        G().securities[i][f] = val;
        saveAll(); render();
      });
    });
    const del = tr.querySelector('[data-action="del"]');
    if(del) del.onclick = ()=>{
      if(G().moves.some(m=>m.valor===G().securities[i].nombre)){
        if(!confirm('Hay movimientos que usan este valor. ¿Eliminarlo igualmente del maestro?')) return;
      }
      G().securities.splice(i,1); saveAll(); render();
    };
  });
}
document.getElementById('addSecBtn').onclick = ()=>{
  G().securities.push({nombre:'Nuevo valor', ticker:'', moneda:'EUR', mercado:'Europa', vehiculo:'Acciones €', sector:'', quote:1, baseline:1, div:0, freq:0, objetivo:0});
  saveAll(); render();
};

function renderTitularesBancos(){
  document.getElementById('titularesBody').innerHTML = G().titulares.map((t,i)=>`
    <tr data-i="${i}">
      <td><input data-f="nombre" value="${t.nombre}"></td>
      <td><input data-f="sub" value="${t.sub||''}" placeholder="p.ej. Nosotros / Niños"></td>
      <td><button class="btn tiny danger" data-action="del">✕</button></td>
    </tr>`).join('') || '<tr><td colspan="3" class="empty-note">Sin titulares todavía en este grupo.</td></tr>';
  document.querySelectorAll('#titularesBody tr[data-i]').forEach(tr=>{
    const i = +tr.dataset.i;
    tr.querySelectorAll('[data-f]').forEach(input=>{
      input.addEventListener('change', ()=>{ G().titulares[i][input.dataset.f] = input.value; saveAll(); render(); });
    });
    const del = tr.querySelector('[data-action="del"]');
    if(del) del.onclick = ()=>{
      if(G().moves.some(m=>m.titular===G().titulares[i].nombre)){
        if(!confirm('Hay movimientos de este titular. ¿Eliminarlo igualmente?')) return;
      }
      G().titulares.splice(i,1); saveAll(); render();
    };
  });

  document.getElementById('bancosChips').innerHTML = G().bancos.map((b,i)=>`
    <div class="chip">${b}<button data-i="${i}">✕</button></div>`).join('') || '<span class="empty-note">Sin bancos todavía.</span>';
  document.querySelectorAll('#bancosChips button').forEach(btn=>{
    btn.onclick = ()=>{
      const i = +btn.dataset.i;
      if(G().moves.some(m=>m.banco===G().bancos[i])){
        if(!confirm('Hay movimientos con este banco. ¿Eliminarlo igualmente?')) return;
      }
      G().bancos.splice(i,1); saveAll(); render();
    };
  });
}
document.getElementById('addTitularBtn').onclick = ()=>{
  G().titulares.push({nombre:'Nuevo titular', sub:''});
  saveAll(); render();
};
document.getElementById('addBancoBtn').onclick = ()=>{
  const input = document.getElementById('newBancoInput');
  const val = input.value.trim();
  if(!val) return;
  if(!G().bancos.includes(val)) G().bancos.push(val);
  input.value = '';
  saveAll(); render();
};

function renderRaw(){
  const sorted = G().moves.map((m,i)=>({...m, _i:i})).sort((a,b)=> new Date(b.fecha||0) - new Date(a.fecha||0));
  document.getElementById('rawBody').innerHTML = sorted.map(m=>{
    const i = m._i;
    const importe = m.operacion==='Dividendos' ? (m.importe||0) : ((+m.titulos||0)*(+m.precio||0));
    return `<tr data-i="${i}">
      <td><input type="date" data-f="fecha" value="${m.fecha||''}"></td>
      <td><select data-f="titular">${G().titulares.map(t=>`<option ${t.nombre===m.titular?'selected':''}>${t.nombre}</option>`).join('')}</select></td>
      <td><select data-f="banco">${G().bancos.map(b=>`<option ${b===m.banco?'selected':''}>${b}</option>`).join('')}</select></td>
      <td><select data-f="valor">${valorOptions(m.valor)}</select></td>
      <td><select data-f="operacion"><option ${m.operacion==='Comp-Vent'?'selected':''}>Comp-Vent</option><option ${m.operacion==='Dividendos'?'selected':''}>Dividendos</option></select></td>
      <td class="num"><input type="number" step="any" data-f="titulos" value="${m.titulos||0}" ${m.operacion==='Dividendos'?'disabled':''}></td>
      <td class="num"><input type="number" step="any" data-f="precio" value="${m.precio||0}" ${m.operacion==='Dividendos'?'disabled':''}></td>
      <td class="num">${m.operacion==='Dividendos' ? `<input type="number" step="any" data-f="importe" value="${m.importe||0}">` : `<div class="readonly">${eur(importe)}</div>`}</td>
      <td><button class="btn tiny danger" data-action="del">✕</button></td>
    </tr>`;
  }).join('') || '<tr><td colspan="9" class="empty-note">Sin movimientos.</td></tr>';
  document.querySelectorAll('#rawBody tr[data-i]').forEach(tr=>{
    const i = +tr.dataset.i;
    tr.querySelectorAll('[data-f]').forEach(input=>{
      input.addEventListener('change', ()=>{
        const f = input.dataset.f; let val = input.value;
        if(['titulos','precio','importe'].includes(f)) val = parseFloat(val)||0;
        G().moves[i][f] = val; saveAll(); render();
      });
    });
    const del = tr.querySelector('[data-action="del"]');
    if(del) del.onclick = ()=>{ G().moves.splice(i,1); saveAll(); render(); };
  });
}
document.getElementById('addRowBtn').onclick = ()=>{
  if(!G().titulares.length || !G().bancos.length || !G().securities.length){ alert('Añade primero titulares, bancos y al menos un valor.'); return; }
  G().moves.push({titular:G().titulares[0].nombre, banco:G().bancos[0], valor:G().securities[0].nombre, operacion:'Comp-Vent', fecha:new Date().toISOString().slice(0,10), titulos:0, precio:0});
  saveAll(); render();
};
document.getElementById('toggleRawBtn').onclick = ()=>{
  G().rawVisible = !G().rawVisible;
  document.getElementById('rawContainer').style.display = G().rawVisible ? '' : 'none';
  document.getElementById('toggleRawBtn').textContent = G().rawVisible ? 'Ocultar' : 'Mostrar';
  saveAll();
};

document.getElementById('breakdownToggle').addEventListener('click', e=>{
  const btn = e.target.closest('button'); if(!btn) return;
  mode = btn.dataset.mode;
  [...document.querySelectorAll('#breakdownToggle button')].forEach(b=>b.classList.toggle('active', b===btn));
  renderBreakdown(positions());
});
document.getElementById('filterTitular').addEventListener('change', e=>{ filterTit = e.target.value; renderTable(positions()); });

document.getElementById('refreshBtn').onclick = async (e)=>{
  const btn = e.currentTarget; btn.disabled = true; const orig = btn.textContent;
  btn.innerHTML = '<span class="spin">↻</span> Actualizando…';
  await new Promise(r=>setTimeout(r, 600));
  G().securities.forEach(s=>{ const drift = (Math.random()-0.5)*0.02; s.quote = Math.max(0.1, s.quote*(1+drift)); });
  DB.eurUsd = Math.max(0.7, DB.eurUsd*(1+(Math.random()-0.5)*0.006));
  DB.lastUpdateTs = Date.now();
  saveAll();
  render();
  btn.disabled = false; btn.textContent = orig;
};

// ---- Backup / restore ----
document.getElementById('downloadBackup').onclick = ()=>{
  const blob = new Blob([JSON.stringify(DB, null, 2)], {type:'application/json'});
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  const stamp = new Date().toISOString().slice(0,10);
  a.href = url; a.download = `patrimonio-backup-${stamp}.json`;
  document.body.appendChild(a); a.click(); document.body.removeChild(a);
  URL.revokeObjectURL(url);
};
document.getElementById('uploadBackup').addEventListener('change', (e)=>{
  const file = e.target.files[0]; if(!file) return;
  const reader = new FileReader();
  reader.onload = ()=>{
    try{
      const parsed = JSON.parse(reader.result);
      if(!parsed || !parsed.grupos){ alert('El archivo no tiene el formato esperado.'); return; }
      if(!confirm('Esto sustituye todos los datos actuales por los de la copia de seguridad. ¿Continuar?')) return;
      DB = parsed;
      if(!DB.activeGrupo || !DB.grupos[DB.activeGrupo]) DB.activeGrupo = Object.keys(DB.grupos)[0];
      saveAll(); render();
      alert('Copia de seguridad cargada.');
    }catch(err){ alert('No se pudo leer el archivo: ' + err.message); }
  };
  reader.readAsText(file);
  e.target.value = '';
});

// ---- Modal nuevo movimiento ----
const overlay = document.getElementById('overlay');
function fillModalSelects(){
  document.getElementById('f_titular').innerHTML = G().titulares.map(t=>`<option>${t.nombre}</option>`).join('');
  document.getElementById('f_banco').innerHTML = G().bancos.map(b=>`<option>${b}</option>`).join('');
  document.getElementById('f_valor').innerHTML = valorOptions() + '<option value="__new__">➕ Añadir nuevo valor…</option>';
}
document.getElementById('openModal').onclick = ()=>{
  if(!G().titulares.length || !G().bancos.length){ alert('Añade primero al menos un titular y un banco para este grupo (sección "Titulares y bancos de este grupo").'); return; }
  fillModalSelects();
  document.getElementById('newsec').classList.remove('open');
  document.getElementById('f_fecha').value = new Date().toISOString().slice(0,10);
  overlay.classList.add('open');
};
document.getElementById('cancelModal').onclick = ()=> overlay.classList.remove('open');
overlay.addEventListener('click', e=>{ if(e.target===overlay) overlay.classList.remove('open'); });
document.getElementById('f_valor').addEventListener('change', e=>{
  document.getElementById('newsec').classList.toggle('open', e.target.value === '__new__');
});

document.getElementById('saveModal').onclick = ()=>{
  let valor = document.getElementById('f_valor').value;
  if(valor === '__new__'){
    const nombre = document.getElementById('ns_nombre').value.trim();
    if(!nombre){ alert('Ponle un nombre al nuevo valor.'); return; }
    const precioInicial = parseFloat(document.getElementById('f_precio').value) || 10;
    G().securities.push({
      nombre, ticker: document.getElementById('ns_ticker').value.trim() || '—',
      moneda: document.getElementById('ns_moneda').value,
      mercado: document.getElementById('ns_mercado').value,
      vehiculo: document.getElementById('ns_vehiculo').value,
      sector: document.getElementById('ns_sector').value.trim() || '—',
      quote: precioInicial, baseline: precioInicial,
      div: parseFloat(document.getElementById('ns_div').value) || 0,
      freq: parseInt(document.getElementById('ns_freq').value) || 0,
      objetivo: parseFloat(document.getElementById('ns_objetivo').value) || 0,
    });
    valor = nombre;
  }
  const titulos = parseFloat(document.getElementById('f_titulos').value)||0;
  const precio = parseFloat(document.getElementById('f_precio').value)||0;
  const operacion = document.getElementById('f_operacion').value;
  G().moves.push({
    titular: document.getElementById('f_titular').value,
    banco: document.getElementById('f_banco').value,
    valor, operacion, fecha: document.getElementById('f_fecha').value,
    titulos: operacion==='Dividendos' ? 0 : titulos, precio,
    importe: operacion==='Dividendos' ? (titulos*precio || precio) : undefined,
  });
  saveAll();
  overlay.classList.remove('open');
  ['f_titulos','f_precio','ns_nombre','ns_ticker','ns_sector','ns_div','ns_objetivo'].forEach(id=>document.getElementById(id).value='');
  render();
};

// ---- Arranque ----
loadAll();
document.getElementById('rawContainer').style.display = G().rawVisible===false ? 'none' : '';
document.getElementById('toggleRawBtn').textContent = G().rawVisible===false ? 'Mostrar' : 'Ocultar';
if(!storageOk) showStorageBanner();
render();
</script>
</body>
</html>
