# ❄️ HyprArch-Dotfiles 

Bienvenido a mi configuración personal de **Hyprland** sobre **Arch Linux**. Un entorno diseñado para la productividad, la estética minimalista y el máximo rendimiento.

---

## 📸 Capturas de Pantalla
![Desktop Preview](desktop_preview.png)

---

## 🛠️ Componentes del Sistema
Este ecosistema está compuesto por:

* **WM:** [Hyprland](https://hyprland.org/) (Dynamic Tiling Wayland Compositor)
* **Barra:** [Waybar](https://github.com/Alexays/Waybar) (Altamente personalizada con scripts de red)
* **Terminal:** [Kitty](https://sw.kovidgoyal.net/kitty/)
* **Editor:** [Neovim](https://neovim.io/) (LazyVim base)
* **Shell:** ZSH con [Starship](https://starship.rs/) prompt

---

## 📂 Estructura del Repositorio
```text
.
├── hypr/          # Atajos de teclado y reglas de ventanas
├── waybar/        # Estética de la barra y scripts de monitoreo
│   └── scripts/   # Utilidades para IP pública, target y monitoreo
├── nvim/          # Configuración de Neovim
├── kitty/         # Fuentes y colores de la terminal
└── zsh/           # Alias y funciones de la shell
```
## 🚀 Instalación Rápida

      1.- Clona el repositorio:

      git clone [https://github.com/DaBit-Code/HyprArch-Dotfiles.git](https://github.com/DaBit-Code/HyprArch-Dotfiles.git)
      
      cd HyprArch-Dotfiles
    
      2.- Copia las configuraciones: Advertencia: Esto sobrescribirá tus archivos actuales. Haz un respaldo primero.

      cp -r hypr waybar nvim kitty ~/.config/
      
      cp zsh/.zshrc ~/

      Dependencias necesarias: Asegúrate de tener instalados: hyprland, waybar, kitty, neovim, zsh, starship, ttf-font-awesome y otf-cascadia-code.

## 🛡️ Scripts Especiales (Waybar)

He incluido scripts personalizados para auditores y sysadmins:

    show-ip / hide-ip: Gestión visual de tu dirección IP Pública en la barra.

    set-target: Define un objetivo (IP/Dominio) para tenerlo siempre a la vista mientras trabajas. Puedes usuar los alias #st IP/Dominio para fija y #st solo para limpiar.

    minifetch.sh: Un resumen rápido del sistema.

---

---

## 📦 Dependencias de Aplicaciones (Opcionales)

Para que los iconos, cápsulas de la **Waybar** y atajos de teclado funcionen al 100%, puedes instalar las aplicaciones vinculadas con los siguientes comandos:

### 🖥️ Virtualización (Entornos de prueba)
```bash
# Elige tu preferido o instala todos:
sudo pacman -S virtualbox qemu-full virt-manager
```

🌐 Navegadores (Privacidad & Seguridad)
```bash
# Usando un helper de AUR (como yay o paru)
yay -S librewolf-bin mullvad-browser-bin
```
💡 Pro Tip: Si prefieres usar Firefox o Brave, simplemente edita los archivos en ~/.config/hypr/hyprland.conf y cambia la variable del navegador por la de tu preferencia.


> **Nota:** Si no usas estas herramientas, los iconos en la barra serán meramente estéticos. Puedes editar los archivos en `waybar/config.jsonc` para apuntar a tus navegadores o apps favoritas.

---

## 🖥️ Configuración de Monitores & Workspaces

Mi setup está optimizado para una experiencia de **Doble Monitor**, donde los espacios de trabajo (Workspaces) están distribuidos de forma lógica para maximizar la productividad.

## 📊 Distribución de Pantallas
      | Monitor | Resolución | Tasa de Refresco | Workspaces Asignados |
      | :--- | :--- | :--- | :--- |
      | **Principal (DP-1)** | 1920x1080 | 144Hz | `1, 2, 3, 4, 5` |
      | **Secundario (HDMI-A-1)** | 1920x1080 | 60Hz | `6, 7, 8, 9, 10` |

## 🧠 Gestión Inteligente de Espacios
      He configurado Hyprland para que sea **resiliente**:
      * **Persistencia:** Cada workspace tiene un "hogar" definido.
      * **Modo On-the-Go (Fallback):** Si desconectas el monitor secundario o decides usar solo una pantalla, **Hyprland remapea automáticamente todos los Workspaces (1-10)** al monitor existente. ¡Nada se pierde, solo se mueve!
      * **Resoluciones:** Si tus monitores tienen resoluciones distintas, el archivo `hyprland.conf` está comentado para que ajustes el posicionamiento (`x,y`) en un segundo.

---

---

## 📜 Licencia & Mantenimiento

Este proyecto está bajo la **Licencia MIT**. Siéntete libre de copiar, modificar y distribuir estas configuraciones. La idea es que la comunidad crezca y cada quien le dé su toque personal.

> **Disclaimer:** Estas configuraciones funcionan perfectamente en mi máquina. No me hago responsable por mentes explotadas o sistemas de archivos corrompidos por falta de cafeína. 😉

---

## 👨‍💻 Mantenido por:
**DaBit-Code**  
📩 [Contactar vía GitHub](mailto:249235645+DaBit-Code@users.noreply.github.com)  
*Arch Linux Enthusiast & Hyprland Crafter*

---

¡Disfruta del setup y que el `pacman -Syu` te acompañe siempre!
